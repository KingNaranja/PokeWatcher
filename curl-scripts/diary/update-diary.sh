# TOKEN='BAhJIiU3ZDk4YjgwYWYzMjRlNTE2MmQxZGU0ZDUyNDA5MzgyNQY6BkVG--0cbeb2ae62bed01b4e07d4886867085a6096080a' ID=1 DATE='2018-11-05' NOTE='found an abra, it ran away' sh curl-scripts/diary/update-diary.sh

curl --include --request PATCH "http://localhost:4741/diaries/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "diary": {
    "date": "'"${DATE}"'",
    "note": "'"${NOTE}"'"
  }
}'