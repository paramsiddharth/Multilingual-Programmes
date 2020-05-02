import Foundation

var si = readLine()!.lowercased()
var s = [Character](si)
var count = [Int](repeating: 0, count: 256)

for i in 0..<s.count {
    var j = Int((s[i].unicodeScalars.first?.value)!)
    count[j] += 1;
}

for i in 97...122 {
    print(NSString(format: "%c -> %d",i,count[i]))
}