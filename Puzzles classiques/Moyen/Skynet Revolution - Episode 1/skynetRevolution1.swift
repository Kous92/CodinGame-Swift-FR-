import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

// A reference type is required.
class Node: Equatable {
    let num: Int
    var connectedTo: [Node]
    var status: Int // Not checked in BFS: 0, checked in BFS: 1, 2: finished
    var distanceFromStartPoint: Int
    var parent: Node?

    init(num: Int) {
        self.num = num
        self.connectedTo = [Node]()
        self.status = 0
        self.distanceFromStartPoint = 0
        self.parent = nil
    }

    func setConnectedTo(otherNode: Node) {
        connectedTo.append(otherNode)
    }

    // Overload the operator ==, to conform to Equatable protocol
    static func ==(lhs: Node, rhs: Node) -> Bool {
        return lhs.num == rhs.num
    }
}

func initNodeList(nodeList: [Node], n: Int) {
    for node in nodeList {
        node.status = 0
        node.distanceFromStartPoint = n + 1 // No need to initialize at Infinity, like the theory, distance won't be higher than n.
        node.parent = nil
    }
}

// Breadth First Search in a graph, here to find the shortest distance between Skynet and the exit.
func skynetBFS(skynet: Node, nodeList: [Node]) {
    // The BFS uses a queue to check each node (FCFS: First Come, First Served).
    var queue = [Node]()
    queue.append(skynet) // Skynet is the first element of the queue

    // Skynet will be checked first
    skynet.status = 1
    skynet.distanceFromStartPoint = 0

    // All nodes of the graph at the end will have all the distances set to intercept Skynet.
    while queue.count > 0 {
        let nodeToAnalyze = queue[0] // Of course, the next node to analyse is the first element of the queue.
        
        // We check each linked node to the actual one.
        for node in nodeToAnalyze.connectedTo {
            // 0: Not checked, 1: Checked
            if node.status == 0 {
                node.parent = nodeToAnalyze
                node.distanceFromStartPoint = queue[0].distanceFromStartPoint + 1
                node.status = 1
                queue.append(node)
            }
        }

        queue.removeFirst() // Each iteration, the first is checked, it's removed after to check the next on the queue
        nodeToAnalyze.status = 2
    }
}

func findLinkToCut(nodeList: [Node], exitNode: Node) -> (Node, Node) {
    var linkToCut = (Node(num: 0), Node(num: 0))
    var node = exitNode

    // Starting from the end to reach Skynet
    while node.parent != nil {
        linkToCut = (node.parent!, node)
        node = node.parent!
    }

    return linkToCut
}

let inputs = (readLine()!).split(separator: " ").map(String.init)
let N = Int(inputs[0])! // the total number of nodes in the level, including the gateways
let L = Int(inputs[1])! // the number of links
let E = Int(inputs[2])! // the number of exit gateways

var nodeList = [Node]() // All nodes of the sub-network
var exitList = [Int]() // All exit gateways

// Creating all nodes, building the sub-network graph.
for i in 0 ..< N {
    nodeList.append(Node(num: i))
}

// Link between nodes with N1 and N2
// Definition of each links between N1 and N2 with connectedTo attribute from Node class.
if L > 0 {
    for _ in 0 ..< L {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        let N1 = Int(inputs[0])! // N1 and N2 defines a link between these nodes
        let N2 = Int(inputs[1])!

        // References of node list, the list of links will be updated on the original Node class instance.
        let node1 = nodeList.filter {$0.num == N1}[0]
        let node2 = nodeList.filter {$0.num == N2}[0]

        // Links between N1 and N2, references to original nodes.
        node1.setConnectedTo(otherNode: node2)
        node2.setConnectedTo(otherNode: node1)
    }
}

if E > 0 {
    for _ in 0 ..< E {
        let EI = Int(readLine()!)! // the index of a gateway node
        exitList.append(EI)
    }
}

// game loop
while true {
    let SI = Int(readLine()!)! // The index of the node on which the Skynet agent is positioned this turn

    var linkToCut = (Node(num: 0), Node(num: 0))
    var minDistance = N + 1

    /* Exit gateways, we use the BFS (Breadth First Search) to determine the shortest distance between Skynet
    and the exit. */
    for exit in exitList {
        /* Reference of node list, we target the node where Skynet is actually present. 
        Any element modified on this reference will be modified on the original Node class instance. */
        let skynetNode = nodeList.filter {$0.num == SI}[0]

        // Few exits means few BFS runs. We need to initialize the graph of the nodeList 
        initNodeList(nodeList: nodeList, n: N)
        skynetBFS(skynet: skynetNode, nodeList: nodeList)

        // Finding closest exit to cut the link
        let exitNode = nodeList.filter {$0.num == exit}[0]

        if exitNode.distanceFromStartPoint < minDistance {
            minDistance = exitNode.distanceFromStartPoint
            linkToCut = findLinkToCut(nodeList: nodeList, exitNode: exitNode)
        }
    }
    
    // Cutting the link between the 2 targeted nodes of the network graph  
    // To target the element to remove, the Node class conforms to Equatable protocol. 
    if let index = linkToCut.0.connectedTo.firstIndex(of: linkToCut.1) {
        linkToCut.0.connectedTo.remove(at: index)
    }

    if let index = linkToCut.1.connectedTo.firstIndex(of: linkToCut.0) {
        linkToCut.1.connectedTo.remove(at: index)
    }

    // Skynet is intercepted.
    print("\(linkToCut.0.num) \(linkToCut.1.num)")
}