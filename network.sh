docker exec cli.Regulator bash -c 'peer channel create -c lottery1 -f ./channels/Lottery1.tx -o orderer0.lotteryassociation.com:7050 --timeout 30'
docker exec cli.Regulator bash -c 'peer channel create -c lottery2 -f ./channels/Lottery2.tx -o orderer0.lotteryassociation.com:7050 --timeout 30'
docker exec cli.Regulator bash -c 'peer channel create -c lottery3 -f ./channels/Lottery3.tx -o orderer0.lotteryassociation.com:7050 --timeout 30'

docker exec cli.Regulator bash -c 'peer channel join -b lottery1.block'
docker exec cli.Regulator bash -c 'peer channel join -b lottery2.block'
docker exec cli.Regulator bash -c 'peer channel join -b lottery3.block'
docker exec cli0.Lottery1 bash -c 'peer channel join -b lottery1.block'
docker exec cli0.Lottery2 bash -c 'peer channel join -b lottery2.block'
docker exec cli0.Lottery3 bash -c 'peer channel join -b lottery3.block'

docker exec cli0.Lottery1 bash -c 'peer channel update -o orderer0.lotteryassociation.com:7050 -c lottery1 -f ./channels/lottery1anchor.tx'
docker exec cli0.Lottery2 bash -c 'peer channel update -o orderer0.lotteryassociation.com:7050 -c lottery2 -f ./channels/lottery2anchor.tx'
docker exec cli0.Lottery3 bash -c 'peer channel update -o orderer0.lotteryassociation.com:7050 -c lottery3 -f ./channels/lottery3anchor.tx'
docker exec cli.Regulator bash -c 'peer channel update -o orderer0.lotteryassociation.com:7050 -c lottery1 -f ./channels/regulatoranchororg1.tx'
docker exec cli.Regulator bash -c 'peer channel update -o orderer0.lotteryassociation.com:7050 -c lottery2 -f ./channels/regulatoranchororg2.tx'
docker exec cli.Regulator bash -c 'peer channel update -o orderer0.lotteryassociation.com:7050 -c lottery3 -f ./channels/regulatoranchororg3.tx'

docker exec cli0.Lottery1 bash -c 'peer chaincode install -l java -p LottoWager -n lottowager -v 0'

#docker exec cli0.Org1 bash -c 'peer chaincode install -p artxchg2 -n artxchg2 -v 0'
#docker exec cli0.Org2 bash -c 'peer chaincode install -p artxchg2 -n artxchg2 -v 0'
#docker exec cli0.Org3 bash -c 'peer chaincode install -p artxchg2 -n artxchg2 -v 0'
#docker exec cli.ArtMarket bash -c 'peer chaincode install -p artxchg2 -n artxchg2 -v 0'

#docker exec cli0.Org1 bash -c "peer chaincode instantiate -C org1 -n artxchg2 -v 0 -c '{\"Args\":[]}'"
#docker exec cli0.Org2 bash -c "peer chaincode instantiate -C org2 -n artxchg2 -v 0 -c '{\"Args\":[]}'"
