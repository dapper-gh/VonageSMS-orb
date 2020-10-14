curl -X "POST" "https://rest.nexmo.com/sms/json" \
-d "from=$VONAGE_NUMEBR" \
-d "text=$VONAGE_MESSAGE" \
-d "to=$VONAGE_RECIPIENT" \
-d "api_key=$VONAGE_API_KEY" \
-d "api_secret=$VONAGE_API_SECRET"
exit $?
