## hlf-lottery

### Hyperledger Fabric Lottery Test Project

## Start/stop the network
```
docker-compose -f docker-compose-hlf-lottery.yaml up
docker-compose -f docker-compose-hlf-lottery.yaml down
```

## Initialize the network
```
./network.sh
```

## Feed/query wagers
```
./createWagers.sh
./queryWagers.sh
```

## Start GUI Client
```
cd lot1Client$ 
node lot1Client.js

Lot1bClient:  http://localhost:4000/
```

## See the Ledger contents per peer
```
Lot1a:        http://localhost:5984/_utils/#_all_dbs
Lot1b:        http://localhost:5985/_utils/#_all_dbs
Lot2:         http://localhost:5986/_utils/#_all_dbs
Lot3:         http://localhost:5987/_utils/#_all_dbs
Reg:          http://localhost:5988/_utils/#_all_dbs

```
