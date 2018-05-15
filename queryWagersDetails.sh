docker exec cli0.Lottery1 bash -c "peer chaincode invoke -C lottery1 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-101\"]}'"
docker exec cli0.Lottery1 bash -c "peer chaincode invoke -C lottery1 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-102\"]}'"
docker exec cli0.Lottery1 bash -c "peer chaincode invoke -C lottery1 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-103\"]}'"
docker exec cli0.Lottery1 bash -c "peer chaincode invoke -C lottery1 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-104\"]}'"

docker exec cli0.Lottery2 bash -c "peer chaincode invoke -C lottery2 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-201\"]}'"
docker exec cli0.Lottery2 bash -c "peer chaincode invoke -C lottery2 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-202\"]}'"
docker exec cli0.Lottery2 bash -c "peer chaincode invoke -C lottery2 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-203\"]}'"
docker exec cli0.Lottery2 bash -c "peer chaincode invoke -C lottery2 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-204\"]}'"

docker exec cli0.Lottery3 bash -c "peer chaincode invoke -C lottery3 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-301\"]}'"
docker exec cli0.Lottery3 bash -c "peer chaincode invoke -C lottery3 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-302\"]}'"
docker exec cli0.Lottery3 bash -c "peer chaincode invoke -C lottery3 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-303\"]}'"
docker exec cli0.Lottery3 bash -c "peer chaincode invoke -C lottery3 -n lottowager -c '{\"Args\":[\"queryWagerDetails\", \"Wager-304\"]}'"
