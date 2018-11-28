#TOKEN='BAhJIiUxNzBjYmU3NjFlMzZmZWMwM2M0NjhkYmZjZTAzMGU0OQY6BkVG--f464550aa8d9ec25f7e2bed9f4954faea83644b9' DATE='2018-11-03' NOTE='caught an abra this morning!' sh curl-scripts/diary/create-diary-entry.sh

curl "http://localhost:4741/diaries" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "diary": {
      "date": "'"${DATE}"'",
      "note": "'"${NOTE}"'"
    }
  }'

echo
