00 00 1-7 * * [ "$(date +%a)" == "Mon" ] && `history -c` && `history -w`

