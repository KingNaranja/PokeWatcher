# ID=3 TOKEN="BAhJIiUwYzFkZjI4YzU4MDVhM2RkNjgwMGJhYzM4NjhkMDQzNgY6BkVG--55bd37991f401498d3fcec28e04652925709f64f" sh curl-scripts/diary/get-diary.sh               

curl "http://localhost:4741/diaries/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo