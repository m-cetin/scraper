#!/bin/bash

# Function to recursively search URLs on a website
search_urls() {
    local url="$1"
    local domain="$2"
    local recursion_level="$3"
    
    # Check recursion level
    if [[ $recursion_level -lt 1 ]]; then
        return
    fi
    
    # Make a request to the URL and extract all URLs
    local response=$(curl -s "$url")
    local urls=$(echo "$response" | grep -Eo 'href="([^"#]+)"' | cut -d'"' -f2)
    
    # Array of common picture extensions to exclude
    local excluded_extensions=("jpeg" "jpg" "png" "gif" "bmp" "svg" "tiff" "ico" "webp" "pict" "eps" "raw" "cr2" "nef" "orf")
    
    # Iterate over the extracted URLs
    for url in $urls; do
        local extension="${url##*.}"
        
        # Check if the URL belongs to the specified domain or its subdomains
        if [[ $url == *"$domain"* ]] && ! [[ " ${excluded_extensions[*]} " == *" $extension "* ]] && ! [[ $url == mailto:* ]]; then
            # Print the URL
            echo "$url"
            
            # Recursively search URLs for subdomains
            if [[ $url != *"$domain"* ]]; then
                search_urls "$url" "$domain" $((recursion_level - 1))
            fi
        fi
    done
}

# Read the domain from user input
read -p "Enter the domain to search for URLs: " domain

# Read the recursion level from user input
read -p "Enter the recursion level (e.g., 5): " recursion_level

# Start the search from the provided domain
search_urls "https://$domain" "$domain" $recursion_level
