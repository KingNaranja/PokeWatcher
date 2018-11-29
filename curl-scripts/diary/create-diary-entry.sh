#TOKEN='BAhJIiUwYzFkZjI4YzU4MDVhM2RkNjgwMGJhYzM4NjhkMDQzNgY6BkVG--55bd37991f401498d3fcec28e04652925709f64f' DATE='2018-11-29' NOTE='caught an abra this morning!' sh curl-scripts/diary/create-diary-entry.sh

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
