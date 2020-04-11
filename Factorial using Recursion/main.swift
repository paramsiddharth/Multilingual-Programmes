func fact(_ n: Int) -> Int {
    return n<2 ? 1 : n*fact(n-1)
}

var n = Int(readLine()!)!
print(fact(n))
