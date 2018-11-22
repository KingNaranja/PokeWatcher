# TOKEN=BAhJIiU2MWRmMmFkZTEwNTllNTE4ZjExYWQ1ODdiZDg2MmRkMAY6BkVG--cee1002871999175e8512e83743e0c7ebf115f88  sh curl-scripts/diary/get-diary.sh 

curl "http://localhost:4741/diaries" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo