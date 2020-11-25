// game loop
while true {
    let enemy1 = readLine()! // name of enemy 1
    let dist1 = Int(readLine()!)! // distance to enemy 1
    let enemy2 = readLine()! // name of enemy 2
    let dist2 = Int(readLine()!)! // distance to enemy 2

    // Write an action using print("message...")

    // Enter the code here
    if dist1 < dist2 {
        print(enemy1)
    } else {
        print(enemy2)
    }
}