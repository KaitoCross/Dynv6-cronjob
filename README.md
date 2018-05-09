# Dynv6-cronjob
Cronjob shell scripts to update IPv4 &amp; IPv6 adresses seperately on Dynv6.com

Set it up in crontab -e like this:

For IPv6-Support:  
`*/1 * * * * /srv/dynv6-cron-v6only.sh whatever.dynv6.net token-for-auth > /dev/null 2>&1`

For IPv4-Support:   
`*/1 * * * * /srv/dynv6-cron-v4only.sh whatever.dynv6.net token-for-auth > /dev/null 2>&1`
