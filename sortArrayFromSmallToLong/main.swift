

import Foundation

var array = ["312321", "321", "32", "2", "321321321321321"]
var arrayResult: [String] = []

var itemResult: String = String()
var itemIndext: Int = 0

while array.count != 0 {
    for (index, item) in array.enumerated() {
        if itemResult.count < item.count {
            itemResult = item
            itemIndext = index
        }
    }
    
    array.remove(at: itemIndext)
    arrayResult.insert(itemResult, at: 0)
    itemResult = String()
    itemIndext = 0
}

print(arrayResult)
