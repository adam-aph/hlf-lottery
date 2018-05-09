package main

import (
    "fmt"
    "github.com/hyperledger/fabric/core/chaincode/shim" // import for Chaincode Interface
    pb "github.com/hyperledger/fabric/protos/peer"      // import for peer response
    "encoding/json"
)

// Defined to implement chaincode interface
type LotteryWager struct {
}

// Define our struct to store Wager in Blockchain, start fields upper case for JSON
type Wager struct {
    Serial string  // This one will be our key
    Lottery string
    Boards string
    Status string   // this will contain its status on the exchange
}

// Implement Init
func (c *LotteryWager) Init(stub shim.ChaincodeStubInterface) pb.Response { 
    return shim.Success(nil) 
}

// Implement Invoke
func (c *LotteryWager) Invoke(stub shim.ChaincodeStubInterface) pb.Response { 

    function, args := stub.GetFunctionAndParameters() // get function name and args

    switch function {
    case "createWager":
        // Wager is created
        return c.createWager(stub, args)
    case "cancelWager":
        // cancel Wager
        return c.updateStatus(stub, args, "cancelled")
    case "queryWagers":
        // Store query
        return c.queryWagers(stub, args)
    case "queryWagerDetails":
        // Get details of a computer
        return c.queryWagerDetails(stub, args)
    default:
        return shim.Error("Available functions: cancelWager, queryWagers, queryWagerDetails")
    }
}

// createWager puts an available Wager in the Blockchain
func (c *LotteryWager) createWager(stub shim.ChaincodeStubInterface, args []string) pb.Response {

    if len(args) != 3 {
        return shim.Error("createWager arguments usage: Serial, Lottery, Boards")
    }

    // A newly created Wager is available
    wager := Wager{args[0], args[1], args[2], "good"}

    // Use JSON to store in the Blockchain
    wagerAsBytes, err := json.Marshal(wager)

    if err!=nil {
        return shim.Error(err.Error())
    }

    // Use serial number as key
    err = stub.PutState(wager.Serial, wagerAsBytes)

    if err != nil {
        return shim.Error(err.Error())
    }
    return shim.Success(nil)
}

// updateStatus handles sell and buy
func (c *LotteryWager) updateStatus(stub shim.ChaincodeStubInterface, args []string, status string) pb.Response {
    if len(args) != 1 {
        return shim.Error("This function needs the serial number as argument")
    }

    // Look for the serial number
    v, err := stub.GetState(args[0])
    if err != nil {
        return shim.Error("Serialnumber " + args[0] + " not found ")
    }

    // Get Information from Blockchain
    var wager Wager
    // Decode JSON data
    json.Unmarshal(v, &wager)

    // Change the status
    wager.Status = status
    // Encode JSON data
    wagerAsBytes, err := json.Marshal(wager)

    // Store in the Blockchain
    err = stub.PutState(wager.Serial, wagerAsBytes)
    if err != nil {
        return shim.Error(err.Error())
    }
    return shim.Success(nil)
}

// queryWagers gives all stored keys in the database
func (c *LotteryWager) queryWagers(stub shim.ChaincodeStubInterface, args []string) pb.Response {

    // See stub.GetStateByRange in interfaces.go
    stWager, end := "",""

    if len(args) == 2 {
        stWager, end = args[0], args[1]
    } 

    // resultIterator is a StateQueryIteratorInterface
    resultsIterator, err := stub.GetStateByRange(stWager, end)
    if err != nil {
        return shim.Error(err.Error())
    }
    defer resultsIterator.Close()

    keys := " \n"
    // This interface includes HasNext,Close and Next
    for resultsIterator.HasNext() {
        queryResponse, err := resultsIterator.Next()
        if err != nil {
            return shim.Error(err.Error())
        }
        keys += queryResponse.Key + " \n"
    }

    fmt.Println(keys)

    return shim.Success([]byte(keys))
}

// queryWagerDetails gives all fields of stored data and needs the serial number
func (c *LotteryWager) queryWagerDetails(stub shim.ChaincodeStubInterface, args []string) pb.Response {

    // Look for the serial number
    value, err := stub.GetState(args[0])
    if err != nil {
            return shim.Error("Serial number " + args[0] +" not found")
        }

    var wager Wager
    // Decode value
    json.Unmarshal(value, &wager)

    fmt.Print(wager)
    // Response info
    return shim.Success([]byte(" Serial: " + wager.Serial + " Lottery: " + wager.Lottery + " Boards: " + wager.Boards + " Status: " + wager.Status))
}

func main() {
    err := shim.Start(new(LotteryWager))
    if err != nil {
        fmt.Printf("Error starting chaincode sample: %s", err)
    }
}
