#!/bin/bash


#TOKEN01 BOT ENV ARG
while getopts 'g:t:m:' flag
do
    case "$flag" in
        g) chat_id="${OPTARG}";;
        t) thread_id="${OPTARG}";;
        m) message="${OPTARG}";;
        k) token="${OPTARG}";;
        *)
            usage
            exit 1;;
    esac
done


curl -s --data "text=$message" --data "chat_id=$chat_id" --data "message_thread_id=$thread_id" 'https://api.telegram.org/bot'$token'/sendMessage' > /dev/null

