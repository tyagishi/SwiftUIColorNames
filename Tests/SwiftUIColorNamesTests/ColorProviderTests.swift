//
//  ColorProviderTests.swift
//  SwiftUIColorNames
//
//  Created by Tomoaki Yagishita on 2024/11/30.
//

import XCTest
import SwiftUIColorNames

final class ColorProviderTests: XCTestCase {

    func test_assignAppleColors() async throws {
        let sut = ColorProvider(.apple)
        let names = ["Blue", "Orange", "Cyan", "Red", "Magenta", "Brown", "Purple", "Green"]
        
        for index in 0...10 {
            let color = sut.color(for: "\(index)")
            XCTAssertEqual(color.name, names[index % names.count])
        }
        let color0 = sut.color(for: "0")
        XCTAssertEqual(color0.name, "Blue")
        let color1 = sut.color(for: "1")
        XCTAssertEqual(color1.name, "Orange")
        let color2 = sut.color(for: "2")
        XCTAssertEqual(color2.name, "Cyan")
        let color3 = sut.color(for: "3")
        XCTAssertEqual(color3.name, "Red")
        let color4 = sut.color(for: "4")
        XCTAssertEqual(color4.name, "Magenta")
        let color5 = sut.color(for: "5")
        XCTAssertEqual(color5.name, "Brown")
        let color6 = sut.color(for: "6")
        XCTAssertEqual(color6.name, "Purple")
        let color7 = sut.color(for: "7")
        XCTAssertEqual(color7.name, "Green")
        let color8 = sut.color(for: "8")
        XCTAssertEqual(color8.name, "Blue") // same color appears again

        // same color for same key 
        let checkColor1 = sut.color(for: "0")
        XCTAssertEqual(checkColor1.name, "Blue")
        let checkColor5 = sut.color(for: "4")
        XCTAssertEqual(checkColor5.name, "Magenta")
    }

}
