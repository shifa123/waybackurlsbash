echo "Enter your Domain Name"
read s
curl "http://web.archive.org/cdx/search/cdx?url=*.$s/*&output=json&fl=original&collapse=urlkey" -s -k --insecure --path-as-is | sed 's/\["//g'| sed 's/"\],//g' |  sort -u | tee -a $s.txt
