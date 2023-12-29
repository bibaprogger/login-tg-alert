#!/bin/bash

# prepare any message you want
login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
login_date="$(date +"%e %b %Y, %a %r")"
login_name="$(whoami)"

message="[INFO: SSH AUTH] $login_date""New connect from ""$login_ip"" as user ""$login_name"

# Paste your data
chat_id=""
thread_id=""
bot_token=""

#send it to supergroup telegram
telegram_send_topic -m "$message" -c "$chat_id" -t "$thread_id" -k "$bot_token"
