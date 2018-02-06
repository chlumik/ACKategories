//
//  StringTests.swift
//  ACKategories
//
//  Created by Jakub Olejník on 06/09/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import ACKategories

class StringSpec: QuickSpec {
    override func spec() {
        describe("String") {
            it("reads first letter") {
                let string = "String"

                expect(string.firstLetter) == "S"
                expect(string.firstLetter) != "s"
            }

            it("trimms") {
                let string = "     String\nString\n\n\n"

                expect(string.trimmed()) == "String\nString"
            }
            
            
            it("normalizes") {
                let string = "ěščřžýáíéüä"
                
                expect(string.normalized()) == "escrzyaieua"
            }
        }
    }
}
