# TOKEN="BAhJIiVmMzYwYWUzMWIyODg1MjY3ODM5ZTFlYjRhMTFlNWFlMgY6BkVG--59a3baa8916d3df14d3ff5c7f382b211e806ae81" sh curl-scripts/diary/get-diaries.sh


curl --include --request GET "http://localhost:4741/diaries" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \