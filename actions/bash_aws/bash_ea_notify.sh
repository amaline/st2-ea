#!/usr/bin/env bash

echo "message>>${message}<<"
if [[ ! $message ]]; then
    # count variable not set so default to 3
    SMS_MESSAGE="notification with no message passed."
else
    SMS_MESSAGE=$message
fi

aws sns publish --topic-arn="arn:aws:sns:us-east-1:022218916186:notify-ea" --message="$SMS_MESSAGE"