docker exec cli0.Lottery1 bash -c "peer chaincode invoke -C lottery1 -n lottowager -c '{\"Args\":[\"cancelWager\", \"Wager-102\"]}'"
docker exec cli0.Lottery1 bash -c "peer chaincode invoke -C lottery1 -n lottowager -c '{\"Args\":[\"cancelWager\", \"Wager-104\"]}'"

docker exec cli0.Lottery2 bash -c "peer chaincode invoke -C lottery2 -n lottowager -c '{\"Args\":[\"cancelWager\", \"Wager-202\"]}'"
docker exec cli0.Lottery2 bash -c "peer chaincode invoke -C lottery2 -n lottowager -c '{\"Args\":[\"cancelWager\", \"Wager-204\"]}'"

docker exec cli0.Lottery3 bash -c "peer chaincode invoke -C lottery3 -n lottowager -c '{\"Args\":[\"cancelWager\", \"Wager-302\"]}'"
docker exec cli0.Lottery3 bash -c "peer chaincode invoke -C lottery3 -n lottowager -c '{\"Args\":[\"cancelWager\", \"Wager-304\"]}'"
