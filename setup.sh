export FABRIC_CFG_PATH=./

configtxgen -profile LOTTERYASSOCIATIONOrdererGenesis -outputBlock ./orderer/genesis.block

configtxgen -profile Lottery1Channel -outputCreateChannelTx ./channels/Lottery1.tx -channelID lottery1
configtxgen -profile Lottery2Channel -outputCreateChannelTx ./channels/Lottery2.tx -channelID lottery2
configtxgen -profile Lottery3Channel -outputCreateChannelTx ./channels/Lottery3.tx -channelID lottery3

configtxgen -profile Lottery1Channel -outputAnchorPeersUpdate ./channels/lottery1anchor.tx -channelID lottery1 -asOrg Lottery1MSP
configtxgen -profile Lottery2Channel -outputAnchorPeersUpdate ./channels/lottery2anchor.tx -channelID lottery2 -asOrg Lottery2MSP
configtxgen -profile Lottery3Channel -outputAnchorPeersUpdate ./channels/lottery3anchor.tx -channelID lottery3 -asOrg Lottery3MSP

configtxgen -profile Lottery1Channel -outputAnchorPeersUpdate ./channels/regulatoranchororg1.tx -channelID lottery1 -asOrg RegulatorMSP
configtxgen -profile Lottery2Channel -outputAnchorPeersUpdate ./channels/regulatoranchororg2.tx -channelID lottery2 -asOrg RegulatorMSP
configtxgen -profile Lottery3Channel -outputAnchorPeersUpdate ./channels/regulatoranchororg3.tx -channelID lottery3 -asOrg RegulatorMSP
