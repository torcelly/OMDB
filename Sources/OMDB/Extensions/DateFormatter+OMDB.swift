//
//  DateFormatter+OMDB.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

extension DateFormatter {

    static var omdb: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter
    }

}
