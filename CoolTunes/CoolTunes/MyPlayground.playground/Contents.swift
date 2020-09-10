import UIKit

var str = "Hello, playground"

let dateJson = "1969-09-26T12:00:00Z"



extension Date {
    static func dateFromString(dateStr: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

        return dateFormatter.date(from: dateStr)
    }
}


let myDate = Date.dateFromString(dateStr: dateJson)




