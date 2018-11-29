#  TOKEN='BAhJIiU2NTUwZGUwM2U5N2VmYjhmOTFjNWMyYTVhNDE5MDM2OAY6BkVG--b0573e255c2155ace638e2c0cdcc0c0acc9f35dd' ID=3 sh curl-scripts/diary/destroy-diary.sh


curl --include --request DELETE "http://localhost:4741/diaries/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \