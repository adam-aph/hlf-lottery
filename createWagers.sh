docker exec cli0.Lottery1 bash -c "peer chaincode invoke -C lottery1 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-101\", \"Lottery1\", \"{board: 1,2,3,4,5}\"]}'"
docker exec cli0.Lottery1 bash -c "peer chaincode invoke -C lottery1 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-102\", \"Lottery1\", \"{board: 1,2,3,4,5}\"]}'"
docker exec cli0.Lottery1 bash -c "peer chaincode invoke -C lottery1 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-103\", \"Lottery1\", \"{board: 1,2,3,4,5}\"]}'"
docker exec cli0.Lottery1 bash -c "peer chaincode invoke -C lottery1 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-104\", \"Lottery1\", \"{board: 1,2,3,4,5}\"]}'"

docker exec cli0.Lottery2 bash -c "peer chaincode invoke -C lottery2 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-201\", \"Lottery2\", \"{board: 1,2,3,4,5}\"]}'"
docker exec cli0.Lottery2 bash -c "peer chaincode invoke -C lottery2 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-202\", \"Lottery2\", \"{board: 1,2,3,4,5}\"]}'"
docker exec cli0.Lottery2 bash -c "peer chaincode invoke -C lottery2 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-203\", \"Lottery2\", \"{board: 1,2,3,4,5}\"]}'"
docker exec cli0.Lottery2 bash -c "peer chaincode invoke -C lottery2 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-204\", \"Lottery2\", \"{board: 1,2,3,4,5}\"]}'"

docker exec cli0.Lottery3 bash -c "peer chaincode invoke -C lottery3 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-301\", \"Lottery3\", \"{board: 1,2,3,4,5}\"]}'"
docker exec cli0.Lottery3 bash -c "peer chaincode invoke -C lottery3 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-302\", \"Lottery3\", \"{board: 1,2,3,4,5}\"]}'"
docker exec cli0.Lottery3 bash -c "peer chaincode invoke -C lottery3 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-303\", \"Lottery3\", \"{board: 1,2,3,4,5}\"]}'"
docker exec cli0.Lottery3 bash -c "peer chaincode invoke -C lottery3 -n lottowager -c '{\"Args\":[\"createWager\", \"Wager-304\", \"Lottery3\", \"{board: 1,2,3,4,5}\"]}'"
