//
//  SwiftUIColorNamesMacOSExampleTests.swift
//
//  Created by : Tomoaki Yagishita on 2021/05/06
//  © 2021  SmallDeskSoftware
//

import XCTest
import SwiftUI
import SwiftUIColorNames
@testable import SwiftUIColorNamesMacOSExample

class SwiftUIColorNamesMacOSExampleTests: XCTestCase {

    func test_W3CMapNameToValue_pickupedColors_ShouldHaveCorrectValue() throws {
        XCTAssertEqual(Color.W3CMapNameToValue["aliceblue"], 0xf0f8ff)
        XCTAssertEqual(Color.W3CMapNameToValue["darkolivegreen"], 0x556b2f)
        XCTAssertEqual(Color.W3CMapNameToValue["darkturquoise"], 0x00ced1)
        XCTAssertEqual(Color.W3CMapNameToValue["purple"], 0x800080)
        XCTAssertEqual(Color.W3CMapNameToValue["steelblue"], 0x4682b4)
    }

    
    func test_W3CMapNameToValue_pickupedValues_ShouldHaveCorrectName() throws {
        XCTAssertEqual(Color.W3CMapValueToName[0xf0f8ff], "aliceblue")
        XCTAssertEqual(Color.W3CMapValueToName[0x556b2f], "darkolivegreen")
        XCTAssertEqual(Color.W3CMapValueToName[0x00ced1], "darkturquoise")
        XCTAssertEqual(Color.W3CMapValueToName[0x800080], "purple")
        XCTAssertEqual(Color.W3CMapValueToName[0x4682b4], "steelblue")
    }
}
