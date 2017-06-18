//
//  RomanNumeralConverter.swift
//  RomanNumerals
//
//  Created by Michelline Tran on 2/27/17.
//  Copyright © 2017 MichellineTran. All rights reserved.
//

import Foundation

class RomanNumeralConverter {
    func convert(number: Int) -> String {
        var base = ""

        if number == 0 {
            base = ""

        } else if number == 4 {
            base = "IV"

        } else if number >= 5 && number < 9 {
            base = "V"
            base = currentBase(base: base, number: number)

        } else if number == 9 {
            base = "IX"

        } else if number >= 40 {
            base = "XL"
            let remainder = number % 10
            base = base + convert(number: remainder)

        } else if number >= 10 {
            base = "X"
            base = base + convert(number: number - 10)

        } else {
            for index in 1...3 {

                base += "I"

                if index == number {
                    break
                }
            }
        }
        
        return base
    }

    let baseRomanNumerals: [String : Int] = ["V" : 5, "X" : 10]

    func currentBase(base: String, number: Int) -> String {
        var base = base

        guard let value = baseRomanNumerals[base] else { assertionFailure(); return ""}

        let diff = number - value

        if diff > 0 {
            for index in 1...diff {
                base += "I"
            }
        }
        return base
    }
}
