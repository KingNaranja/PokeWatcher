#TOKEN='BAhJIiUyYzBhYjgyZDMxZTNmMjhmZjIwNGU2MTFlYWZjZTZiZAY6BkVG--1e3fad50089d6815084a7cf54deb916d63375fc7' DATE='2018-11-30' NOTE='I ran into Lugia today!' sh curl-scripts/diary/create-diary-entry.sh

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
