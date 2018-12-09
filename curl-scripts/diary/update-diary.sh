# TOKEN='BAhJIiVmMzYwYWUzMWIyODg1MjY3ODM5ZTFlYjRhMTFlNWFlMgY6BkVG--59a3baa8916d3df14d3ff5c7f382b211e806ae81' ID=91 DATE='2018-05-05' NOTE='I AM A MAGIC WIZARD' sh curl-scripts/diary/update-diary.sh

curl --include --request PATCH "http://localhost:4741/diaries/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "diary": {
    "date": "'"${DATE}"'",
    "note": "'"${NOTE}"'"
  }
}'