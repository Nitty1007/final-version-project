//
//  Utils.swift
//  final version project
//
//  Created by Nitay Patel on 12/12/21.
//

import Foundation



extension String {
    static let numberFormatter = NumberFormatter()
    var doubhleValue: Double {
        String.numberFormatter.decimalSeparator = " . "
        if let result = String.numberFormatter.number(from: self) {
            return result.doubleValue
        } else {
            String.numberFormatter.decimalSeparator = " , "
            if let result = String.numberFormatter.number(from: self) {
                return result.doubleValue
            }
        }
        return 0
    }
}
