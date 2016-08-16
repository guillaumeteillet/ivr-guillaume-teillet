#!/usr/bin/env bash

(printf "%s\n" \
"Subject: New message on your Voicemail from $2 !" \
"To: Voicemail <your-email-address@domain.tld>" \
"Content-Type: application/wav" \
"Content-Disposition: attachment; filename=$(basename $1)" \
"Content-Transfer-Encoding: base64" \
""; base64 $1) | /usr/sbin/sendmail -t
