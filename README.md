# URL extracter from a given website

Searches for URLs on a given domain with a given recursion level (e.g. 5), excludes mails and common picture extensions (like .jpeg) and shows a list of all URLs.

# Demonstration

```
$ bash scraper.sh 
Enter the domain to search for URLs: propumpservice.com
Enter the recursion level (e.g., 5): 5
https://propumpservice.com/
https://propumpservice.com/wp-json/
https://propumpservice.com/wp-json/wp/v2/pages/206
https://propumpservice.com/xmlrpc.php?rsd
https://propumpservice.com/wp-includes/wlwmanifest.xml
https://propumpservice.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fpropumpservice.com%2F
https://propumpservice.com/feed/
https://propumpservice.com/xmlrpc.php
https://propumpservice.com/about-pump-controls/
https://propumpservice.com/pumping-industry-careers/
https://propumpservice.com/what-we-do/
https://propumpservice.com/what-we-do/pump-station-sales-install/
https://propumpservice.com/what-we-do/pump-station-maintenance-service/
https://propumpservice.com/what-we-do/pump-station-consulting-evaluation/
https://propumpservice.com/what-we-do/control-panels-retrofits/
https://propumpservice.com/what-we-do/wet-well-installations-rehabs/
https://propumpservice.com/what-we-do/scada-systems-remote-monitoring/
https://propumpservice.com/what-we-do/biogas-systems/
https://propumpservice.com/what-we-do/water-features/
https://propumpservice.com/what-we-do/mechanical-services/
https://propumpservice.com/industries-served/
https://propumpservice.com/pumping-system-projects/
https://propumpservice.com/contact-us/
https://propumpservice.com/find-your-sales-rep/

``` 
