total=$(jq .total.lines.pct coverage/coverage/coverage-summary.json)
echo "Total: $total"
#display percentage
if [ $total -ge 85 ]; then
    echo ":clap: Code coverage is $total% :clap:"
elif [ $total -ge 70 ]; then
    echo ":warning: Code coverage is $total% :warning:"
else
    echo ":sob: Code coverage is $total% :sob:"
fi