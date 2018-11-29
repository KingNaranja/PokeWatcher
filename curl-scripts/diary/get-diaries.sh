# TOKEN="BAhJIiUwYzFkZjI4YzU4MDVhM2RkNjgwMGJhYzM4NjhkMDQzNgY6BkVG--55bd37991f401498d3fcec28e04652925709f64f" sh curl-scripts/diary/get-diaries.sh


curl --include --request GET "http://localhost:4741/diaries" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \