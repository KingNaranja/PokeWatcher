#  TOKEN='BAhJIiVkYzMzYzkzZWM1Yzc4ZDM0MDIwYzExMTQyODJjODg1YQY6BkVG--cd20f96e47db9fb925d185009eb61619c6b9ff74' ID=3 sh curl-scripts/diary/destroy-diary.sh


curl --include --request DELETE "http://localhost:4741/diaries/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \