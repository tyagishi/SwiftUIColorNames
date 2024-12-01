//
//  ColorProvider_Tests.swift
//  SwiftUIColorNames
//
//  Created by Tomoaki Yagishita on 2024/12/01.
//


#if canImport(Testing)
import Testing
@testable import SwiftUIColorNames

struct ColorProvider_Tests {

    @Test("map variants", arguments: [ColorProvider.MapType.apple, .w3c])
    func test_cyclicColor(_ maptype: ColorProvider.MapType) async throws {
        let sut = ColorProvider(maptype)
        
        let colorNum = sut.colorNum
        var assignedColorNames: Set<String> = []
        
        for index in 0..<colorNum {
            let newColor = sut.color(for: "\(index)")
            print(newColor.name)
            #expect(assignedColorNames.contains(newColor.name) == false)
            assignedColorNames.insert(newColor.name)
        }
        
        for index in colorNum..<colorNum * 2 {
            let newColor = sut.color(for: "\(index)")
            #expect(assignedColorNames.contains(newColor.name))
        }
    }
}
#endif
