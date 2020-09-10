//
//  DateExtension.swift
//  CoolTunes
//
//  Created by Alfredo Arias on 9/9/20.
//  Copyright © 2020 academy. All rights reserved.
//

import Foundation

extension Date {
    static func dateFromString(dateStr: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

        return dateFormatter.date(from: dateStr)
    }
    
    func toStringFormat() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm"
        return dateFormatter.string(from: self)
    }
}

