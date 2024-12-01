import XCTest
@testable import SwiftUIColorNames
import SwiftUI

final class SwiftUIColorNamesTests: XCTestCase {
    func test_rgbValueConstructor_black() async throws {
        let black = try XCTUnwrap(Color(hexStr: "0x000000"))
        let (r,g,b) = black.rgbIntValues
        XCTAssertEqual(r, 0)
        XCTAssertEqual(g, 0)
        XCTAssertEqual(b, 0)
    }

    func test_rgbValueConstructor_blue() async throws {
        let blue = try XCTUnwrap(Color(hexStr: "0x0433ff"))
        let (r,g,b) = blue.rgbIntValues
        XCTAssertEqual(r, UInt32(Int(0x04)))
        XCTAssertEqual(g, UInt32(Int(0x33)))
        XCTAssertEqual(b, UInt32(Int(0xff)))
    }

    func test_rgbValueConstructor_red() async throws {
        let red = try XCTUnwrap(Color(hexStr: "0xff2600"))
        let (r,g,b) = red.rgbIntValues
        XCTAssertEqual(r, UInt32(Int(0xff)))
        XCTAssertEqual(g, UInt32(Int(0x26)))
        XCTAssertEqual(b, UInt32(Int(0x00)))
    }

    func test_rgbValueConstructor_green() async throws {
        let green = try XCTUnwrap(Color(hexStr: "0x00f900"))
        let (r,g,b) = green.rgbIntValues
        XCTAssertEqual(r, UInt32(Int(0x00)))
        XCTAssertEqual(g, UInt32(Int(0xf9)))
        XCTAssertEqual(b, UInt32(Int(0x00)))
    }

}
