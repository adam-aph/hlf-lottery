docker exec cli0.Lottery1 bash -c "peer chaincode query -C lottery1 -n lottowager -c '{\"Args\":[\"queryWagers\"]}'"
docker exec cli0.Lottery2 bash -c "peer chaincode query -C lottery2 -n lottowager -c '{\"Args\":[\"queryWagers\"]}'"
docker exec cli0.Lottery3 bash -c "peer chaincode query -C lottery3 -n lottowager -c '{\"Args\":[\"queryWagers\"]}'"
