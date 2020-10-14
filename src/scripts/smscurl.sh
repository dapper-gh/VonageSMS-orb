CURL_RESPONSE=$(curl -X "POST" "https://rest.nexmo.com/sms/json" \
  -d "from=$VONAGE_NUMBER" \
  -d "text=$VONAGE_MESSAGE" \
  -d "to=$VONAGE_RECIPIENT" \
  -d "api_key=$VONAGE_API_KEY" \
  -d "api_secret=$VONAGE_API_SECRET")
EXIT_CODE=$(echo "$CURL_RESPONSE" | jq -r ".messages[0].status")
echo "-- CURL RESPONSE BELOW --"
echo "$CURL_RESPONSE"
exit "$EXIT_CODE"
