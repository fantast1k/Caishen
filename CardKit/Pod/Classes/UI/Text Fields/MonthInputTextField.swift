//
//  MonthInputTextField.swift
//  Pods
//
//  Created by Daniel Vancura on 3/8/16.
//
//

import UIKit

public class MonthInputTextField: DetailInputTextField {
    
    /**
     Checks the validity of the entered month.
     
     - returns: True, if the month is valid.
     */
    internal override func isInputValid(month: String, partiallyValid: Bool) -> Bool {
        let length = month.characters.count
        if partiallyValid && length == 0 {
            return true
        }
        
        guard let monthInt = UInt(month) else {
            return false
        }
        
        if length == 1 && !["0","1"].contains(month) {
            return false
        }
        
        return ((monthInt >= 1 && monthInt <= 12) ||
            (partiallyValid && month == "0")) &&
            (partiallyValid || length == 2)
    }
}
