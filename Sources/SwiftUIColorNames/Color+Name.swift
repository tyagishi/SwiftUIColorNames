//
//  Color+Name.swift
//
//  Created by : Tomoaki Yagishita on 2020/10/24
//  © 2020  SmallDeskSoftware
//

import Foundation
import SwiftUI

#if canImport(AppKit)
import AppKit
typealias SysColor = NSColor
#elseif canImport(UIKit)
import UIKit
typealias SysColor = UIColor
#endif

extension UInt32 {
    init?(_ str: String, radix: Int) {
        guard let intValue = Int(str, radix: radix) else { return nil }
        self = UInt32(intValue)
    }
}

public extension Color {
    init(hex: UInt32) {
        let last16 = UInt32(0xFF)
        let rValue:UInt32 = (hex >> 16) & last16
        let gValue:UInt32 = (hex >> 8) & last16
        let bValue:UInt32 = (hex >> 0) & last16
        self.init(.sRGB, red: Double(rValue)/255, green: Double(gValue)/255, blue: Double(bValue)/255, opacity: 1.0)
    }

    init?(hexStr: String) {
        guard hexStr.count == 8 else { return nil } // expect start with 0x like 0x0433ff
        let startIndex = hexStr.startIndex
        guard let rValue:UInt32 = UInt32(hexStr[hexStr.index(startIndex, offsetBy: 2)..<hexStr.index(startIndex, offsetBy: 4)], radix: 16),
              let gValue:UInt32 = UInt32(hexStr[hexStr.index(startIndex, offsetBy: 4)..<hexStr.index(startIndex, offsetBy: 6)], radix: 16),
              let bValue:UInt32 = UInt32(hexStr[hexStr.index(startIndex, offsetBy: 6)..<hexStr.index(startIndex, offsetBy: 8)], radix: 16) else { return nil }
        self.init(.sRGB, red: Double(rValue)/255, green: Double(gValue)/255, blue: Double(bValue)/255, opacity: 1.0)
    }
    
    var rgbIntValues: (r: UInt32, g: UInt32, b: UInt32) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        #if os(macOS)
        if let sysColor = SysColor(self).usingColorSpace(.deviceRGB) {
            sysColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        }
        #elseif os(iOS)
        let sysColor = SysColor(self)
        sysColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        #endif
        return (UInt32(round(red * 255.0)), UInt32(round(green * 255.0)), UInt32(round(blue * 255.0)))
    }
    
    var rgbaIntValues: (r: UInt32, g: UInt32, b: UInt32, a: UInt32) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        #if os(macOS)
        if let sysColor = SysColor(self).usingColorSpace(.deviceRGB) {
            sysColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        }
        #elseif os(iOS)
        let sysColor = SysColor(self)
        sysColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        #endif
        return (UInt32(round(red * 255.0)), UInt32(round(green * 255.0)), UInt32(round(blue * 255.0)), UInt32(round(alpha * 255.0)))
    }

    var rgbUInt32: UInt32 {
        let (red, green, blue) = self.rgbIntValues
        return UInt32(red << 16 + green << 8 + blue)
    }
    
    var rgbValueStr: String {
        let rgb = self.rgbUInt32
        return String(format: "0x%06x", rgb)
    }
    
    // MARK: colors from Apple
    enum ApplePalletColors: UInt32, CaseIterable {
        case Black = 0x000000
        case Blue = 0x0433ff
        case Brown = 0xaa7942
        case Cyan = 0x00fdff
        case Green = 0x00f900
        case Magenta = 0xff40ff
        case Orange = 0xff9300
        case Purple = 0x942192
        case Red = 0xff2600
        case Yellow = 0xfffb00
        case White = 0xffffff
    }
    static let ApplePalletBlack = Color(hex: ApplePalletColors.Black.rawValue)
    static let ApplePalletBlue = Color(hex: ApplePalletColors.Blue.rawValue)
    static let ApplePalletBrown = Color(hex: ApplePalletColors.Brown.rawValue)
    static let ApplePalletCyan = Color(hex: ApplePalletColors.Cyan.rawValue)
    static let ApplePalletGreen = Color(hex: ApplePalletColors.Green.rawValue)
    static let ApplePalletMagenta = Color(hex: ApplePalletColors.Magenta.rawValue)
    static let ApplePalletOrange = Color(hex: ApplePalletColors.Orange.rawValue)
    static let ApplePalletPurple = Color(hex: ApplePalletColors.Purple.rawValue)
    static let ApplePalletRed = Color(hex: ApplePalletColors.Red.rawValue)
    static let ApplePalletYellow = Color(hex: ApplePalletColors.Yellow.rawValue)
    static let ApplePalletWhite = Color(hex: ApplePalletColors.White.rawValue)

    // MARK: colors from W3C
    enum AdditionalColors: UInt32, CaseIterable{
        case aliceblue = 0xf0f8ff
        case antiquewhite = 0xfaebd7
        //    case aqua = 0x00ffff   // conflict with Cyan
        case aquamarine = 0x7fffd4
        case azure = 0xf0ffff
        case beige = 0xf5f5dc
        case bisque = 0xffe4c4
        case black = 0x000000
        case blanchedalmond = 0xffebcd
        case blue = 0x0000ff
        case blueviolet = 0x8a2be2
        case brown = 0xa52a2a
        case burlywood = 0xdeb887
        case cadetblue = 0x5f9ea0
        case chartreuse = 0x7fff00
        case chocolate = 0xd2691e
        case coral = 0xff7f50
        case cornflowerblue = 0x6495ed
        case cornsilk = 0xfff8dc
        case crimson = 0xdc143c
        case cyan = 0x00ffff
        case darkblue = 0x00008b
        case darkcyan = 0x008b8b
        case darkgoldenrod = 0xb8860b
        case darkgray = 0xa9a9a9
        case darkgreen = 0x006400
        //    case darkgrey = 0xa9a9a9
        case darkkhaki = 0xbdb76b
        case darkmagenta = 0x8b008b
        case darkolivegreen = 0x556b2f
        case darkorange = 0xff8c00
        case darkorchid = 0x9932cc
        case darkred = 0x8b0000
        case darksalmon = 0xe9967a
        case darkseagreen = 0x8fbc8f
        case darkslateblue = 0x483d8b
        case darkslategray = 0x2f4f4f
        //    case darkslategrey = 0x2f4f4f
        case darkturquoise = 0x00ced1
        case darkviolet = 0x9400d3
        case deeppink = 0xff1493
        case deepskyblue = 0x00bfff
        case dimgray = 0x696969
        //    case dimgrey = 0x696969
        case dodgerblue = 0x1e90ff
        case firebrick = 0xb22222
        case floralwhite = 0xfffaf0
        case forestgreen = 0x228b22
        //    case fuchsia = 0xff00ff // because of duplicate with magenta
        case gainsboro = 0xdcdcdc
        case ghostwhite = 0xf8f8ff
        case gold = 0xffd700
        case goldenrod = 0xdaa520
        case gray = 0x808080
        case green = 0x008000
        case greenyellow = 0xadff2f
        //    case grey = 0x808080
        case honeydew = 0xf0fff0
        case hotpink = 0xff69b4
        case indianred = 0xcd5c5c
        case indigo = 0x4b0082
        case ivory = 0xfffff0
        case khaki = 0xf0e68c
        case lavender = 0xe6e6fa
        case lavenderblush = 0xfff0f5
        case lawngreen = 0x7cfc00
        case lemonchiffon = 0xfffacd
        case lightblue = 0xadd8e6
        case lightcoral = 0xf08080
        case lightcyan = 0xe0ffff
        case lightgoldenrodyellow = 0xfafad2
        case lightgray = 0xd3d3d3
        case lightgreen = 0x90ee90
        //    case lightgrey = 0xd3d3d3
        case lightpink = 0xffb6c1
        case lightsalmon = 0xffa07a
        case lightseagreen = 0x20b2aa
        case lightskyblue = 0x87cefa
        case lightslategray = 0x778899
        //    case lightslategrey = 0x778899
        case lightsteelblue = 0xb0c4de
        case lightyellow = 0xffffe0
        case lime = 0x00ff00
        case limegreen = 0x32cd32
        case linen = 0xfaf0e6
        case magenta = 0xff00ff
        case maroon = 0x800000
        case mediumaquamarine = 0x66cdaa
        case mediumblue = 0x0000cd
        case mediumorchid = 0xba55d3
        case mediumpurple = 0x9370db
        case mediumseagreen = 0x3cb371
        case mediumslateblue = 0x7b68ee
        case mediumspringgreen = 0x00fa9a
        case mediumturquoise = 0x48d1cc
        case mediumvioletred = 0xc71585
        case midnightblue = 0x191970
        case mintcream = 0xf5fffa
        case mistyrose = 0xffe4e1
        case moccasin = 0xffe4b5
        case navajowhite = 0xffdead
        case navy = 0x000080
        case oldlace = 0xfdf5e6
        case olive = 0x808000
        case olivedrab = 0x6b8e23
        case orange = 0xffa500
        case orangered = 0xff4500
        case orchid = 0xda70d6
        case palegoldenrod = 0xeee8aa
        case palegreen = 0x98fb98
        case paleturquoise = 0xafeeee
        case palevioletred = 0xdb7093
        case papayawhip = 0xffefd5
        case peachpuff = 0xffdab9
        case peru = 0xcd853f
        case pink = 0xffc0cb
        case plum = 0xdda0dd
        case powderblue = 0xb0e0e6
        case purple = 0x800080
        case rebeccapurple = 0x663399
        case red = 0xff0000
        case rosybrown = 0xbc8f8f
        case royalblue = 0x4169e1
        case saddlebrown = 0x8b4513
        case salmon = 0xfa8072
        case sandybrown = 0xf4a460
        case seagreen = 0x2e8b57
        case seashell = 0xfff5ee
        case sienna = 0xa0522d
        case silver = 0xc0c0c0
        case skyblue = 0x87ceeb
        case slateblue = 0x6a5acd
        case slategray = 0x708090
        //    case slategrey = 0x708090
        case snow = 0xfffafa
        case springgreen = 0x00ff7f
        case steelblue = 0x4682b4
        case tan = 0xd2b48c
        case teal = 0x008080
        case thistle = 0xd8bfd8
        case tomato = 0xff6347
        case turquoise = 0x40e0d0
        case violet = 0xee82ee
        case wheat = 0xf5deb3
        case white = 0xffffff
        case whitesmoke = 0xf5f5f5
        case yellow = 0xffff00
        case yellowgreen = 0x9acd32
    }
    
    static let Aliceblue = Color(hex:AdditionalColors.aliceblue.rawValue)
    static let Antiquewhite = Color(hex:AdditionalColors.antiquewhite.rawValue)
    //  static let Aqua = Color(hex:AdditionalColors.aqua.rawValue)
    static let Aquamarine = Color(hex:AdditionalColors.aquamarine.rawValue)
    static let Azure = Color(hex:AdditionalColors.azure.rawValue)
    static let Beige = Color(hex:AdditionalColors.beige.rawValue)
    static let Bisque = Color(hex:AdditionalColors.bisque.rawValue)
    static let Black = Color(hex:AdditionalColors.black.rawValue)
    static let Blanchedalmond = Color(hex:AdditionalColors.blanchedalmond.rawValue)
    static let Blue = Color(hex:AdditionalColors.blue.rawValue)
    static let Blueviolet = Color(hex:AdditionalColors.blueviolet.rawValue)
    static let Brown = Color(hex:AdditionalColors.brown.rawValue)
    static let Burlywood = Color(hex:AdditionalColors.burlywood.rawValue)
    static let Cadetblue = Color(hex:AdditionalColors.cadetblue.rawValue)
    static let Chartreuse = Color(hex:AdditionalColors.chartreuse.rawValue)
    static let Chocolate = Color(hex:AdditionalColors.chocolate.rawValue)
    static let Coral = Color(hex:AdditionalColors.coral.rawValue)
    static let Cornflowerblue = Color(hex:AdditionalColors.cornflowerblue.rawValue)
    static let Cornsilk = Color(hex:AdditionalColors.cornsilk.rawValue)
    static let Crimson = Color(hex:AdditionalColors.crimson.rawValue)
    static let Cyan = Color(hex:AdditionalColors.cyan.rawValue)
    static let Darkblue = Color(hex:AdditionalColors.darkblue.rawValue)
    static let Darkcyan = Color(hex:AdditionalColors.darkcyan.rawValue)
    static let Darkgoldenrod = Color(hex:AdditionalColors.darkgoldenrod.rawValue)
    static let Darkgray = Color(hex:AdditionalColors.darkgray.rawValue)
    static let Darkgreen = Color(hex:AdditionalColors.darkgreen.rawValue)
    //  static let Darkgrey = Color(hex:AdditionalColors.darkgrey.rawValue)
    static let Darkkhaki = Color(hex:AdditionalColors.darkkhaki.rawValue)
    static let Darkmagenta = Color(hex:AdditionalColors.darkmagenta.rawValue)
    static let Darkolivegreen = Color(hex:AdditionalColors.darkolivegreen.rawValue)
    static let Darkorange = Color(hex:AdditionalColors.darkorange.rawValue)
    static let Darkorchid = Color(hex:AdditionalColors.darkorchid.rawValue)
    static let Darkred = Color(hex:AdditionalColors.darkred.rawValue)
    static let Darksalmon = Color(hex:AdditionalColors.darksalmon.rawValue)
    static let Darkseagreen = Color(hex:AdditionalColors.darkseagreen.rawValue)
    static let Darkslateblue = Color(hex:AdditionalColors.darkslateblue.rawValue)
    static let Darkslategray = Color(hex:AdditionalColors.darkslategray.rawValue)
    //  static let Darkslategrey = Color(hex:AdditionalColors.darkslategrey.rawValue)
    static let Darkturquoise = Color(hex:AdditionalColors.darkturquoise.rawValue)
    static let Darkviolet = Color(hex:AdditionalColors.darkviolet.rawValue)
    static let Deeppink = Color(hex:AdditionalColors.deeppink.rawValue)
    static let Deepskyblue = Color(hex:AdditionalColors.deepskyblue.rawValue)
    static let Dimgray = Color(hex:AdditionalColors.dimgray.rawValue)
    //  static let Dimgrey = Color(hex:AdditionalColors.dimgrey.rawValue)
    static let Dodgerblue = Color(hex:AdditionalColors.dodgerblue.rawValue)
    static let Firebrick = Color(hex:AdditionalColors.firebrick.rawValue)
    static let Floralwhite = Color(hex:AdditionalColors.floralwhite.rawValue)
    static let Forestgreen = Color(hex:AdditionalColors.forestgreen.rawValue)
    //  static let Fuchsia = Color(hex:AdditionalColors.fuchsia.rawValue)
    static let Gainsboro = Color(hex:AdditionalColors.gainsboro.rawValue)
    static let Ghostwhite = Color(hex:AdditionalColors.ghostwhite.rawValue)
    static let Gold = Color(hex:AdditionalColors.gold.rawValue)
    static let Goldenrod = Color(hex:AdditionalColors.goldenrod.rawValue)
    static let Gray = Color(hex:AdditionalColors.gray.rawValue)
    static let Green = Color(hex:AdditionalColors.green.rawValue)
    static let Greenyellow = Color(hex:AdditionalColors.greenyellow.rawValue)
    //  static let Grey = Color(hex:AdditionalColors.grey.rawValue)
    static let Honeydew = Color(hex:AdditionalColors.honeydew.rawValue)
    static let Hotpink = Color(hex:AdditionalColors.hotpink.rawValue)
    static let Indianred = Color(hex:AdditionalColors.indianred.rawValue)
    static let Indigo = Color(hex:AdditionalColors.indigo.rawValue)
    static let Ivory = Color(hex:AdditionalColors.ivory.rawValue)
    static let Khaki = Color(hex:AdditionalColors.khaki.rawValue)
    static let Lavender = Color(hex:AdditionalColors.lavender.rawValue)
    static let Lavenderblush = Color(hex:AdditionalColors.lavenderblush.rawValue)
    static let Lawngreen = Color(hex:AdditionalColors.lawngreen.rawValue)
    static let Lemonchiffon = Color(hex:AdditionalColors.lemonchiffon.rawValue)
    static let Lightblue = Color(hex:AdditionalColors.lightblue.rawValue)
    static let Lightcoral = Color(hex:AdditionalColors.lightcoral.rawValue)
    static let Lightcyan = Color(hex:AdditionalColors.lightcyan.rawValue)
    static let Lightgoldenrodyellow = Color(hex:AdditionalColors.lightgoldenrodyellow.rawValue)
    static let Lightgray = Color(hex:AdditionalColors.lightgray.rawValue)
    static let Lightgreen = Color(hex:AdditionalColors.lightgreen.rawValue)
    //  static let Lightgrey = Color(hex:AdditionalColors.lightgrey.rawValue)
    static let Lightpink = Color(hex:AdditionalColors.lightpink.rawValue)
    static let Lightsalmon = Color(hex:AdditionalColors.lightsalmon.rawValue)
    static let Lightseagreen = Color(hex:AdditionalColors.lightseagreen.rawValue)
    static let Lightskyblue = Color(hex:AdditionalColors.lightskyblue.rawValue)
    static let Lightslategray = Color(hex:AdditionalColors.lightslategray.rawValue)
    //  static let Lightslategrey = Color(hex:AdditionalColors.lightslategrey.rawValue)
    static let Lightsteelblue = Color(hex:AdditionalColors.lightsteelblue.rawValue)
    static let Lightyellow = Color(hex:AdditionalColors.lightyellow.rawValue)
    static let Lime = Color(hex:AdditionalColors.lime.rawValue)
    static let Limegreen = Color(hex:AdditionalColors.limegreen.rawValue)
    static let Linen = Color(hex:AdditionalColors.linen.rawValue)
    static let Magenta = Color(hex:AdditionalColors.magenta.rawValue)
    static let Maroon = Color(hex:AdditionalColors.maroon.rawValue)
    static let Mediumaquamarine = Color(hex:AdditionalColors.mediumaquamarine.rawValue)
    static let Mediumblue = Color(hex:AdditionalColors.mediumblue.rawValue)
    static let Mediumorchid = Color(hex:AdditionalColors.mediumorchid.rawValue)
    static let Mediumpurple = Color(hex:AdditionalColors.mediumpurple.rawValue)
    static let Mediumseagreen = Color(hex:AdditionalColors.mediumseagreen.rawValue)
    static let Mediumslateblue = Color(hex:AdditionalColors.mediumslateblue.rawValue)
    static let Mediumspringgreen = Color(hex:AdditionalColors.mediumspringgreen.rawValue)
    static let Mediumturquoise = Color(hex:AdditionalColors.mediumturquoise.rawValue)
    static let Mediumvioletred = Color(hex:AdditionalColors.mediumvioletred.rawValue)
    static let Midnightblue = Color(hex:AdditionalColors.midnightblue.rawValue)
    static let Mintcream = Color(hex:AdditionalColors.mintcream.rawValue)
    static let Mistyrose = Color(hex:AdditionalColors.mistyrose.rawValue)
    static let Moccasin = Color(hex:AdditionalColors.moccasin.rawValue)
    static let Navajowhite = Color(hex:AdditionalColors.navajowhite.rawValue)
    static let Navy = Color(hex:AdditionalColors.navy.rawValue)
    static let Oldlace = Color(hex:AdditionalColors.oldlace.rawValue)
    static let Olive = Color(hex:AdditionalColors.olive.rawValue)
    static let Olivedrab = Color(hex:AdditionalColors.olivedrab.rawValue)
    static let Orange = Color(hex:AdditionalColors.orange.rawValue)
    static let Orangered = Color(hex:AdditionalColors.orangered.rawValue)
    static let Orchid = Color(hex:AdditionalColors.orchid.rawValue)
    static let Palegoldenrod = Color(hex:AdditionalColors.palegoldenrod.rawValue)
    static let Palegreen = Color(hex:AdditionalColors.palegreen.rawValue)
    static let Paleturquoise = Color(hex:AdditionalColors.paleturquoise.rawValue)
    static let Palevioletred = Color(hex:AdditionalColors.palevioletred.rawValue)
    static let Papayawhip = Color(hex:AdditionalColors.papayawhip.rawValue)
    static let Peachpuff = Color(hex:AdditionalColors.peachpuff.rawValue)
    static let Peru = Color(hex:AdditionalColors.peru.rawValue)
    static let Pink = Color(hex:AdditionalColors.pink.rawValue)
    static let Plum = Color(hex:AdditionalColors.plum.rawValue)
    static let Powderblue = Color(hex:AdditionalColors.powderblue.rawValue)
    static let Purple = Color(hex:AdditionalColors.purple.rawValue)
    static let Rebeccapurple = Color(hex:AdditionalColors.rebeccapurple.rawValue)
    static let Red = Color(hex:AdditionalColors.red.rawValue)
    static let Rosybrown = Color(hex:AdditionalColors.rosybrown.rawValue)
    static let Royalblue = Color(hex:AdditionalColors.royalblue.rawValue)
    static let Saddlebrown = Color(hex:AdditionalColors.saddlebrown.rawValue)
    static let Salmon = Color(hex:AdditionalColors.salmon.rawValue)
    static let Sandybrown = Color(hex:AdditionalColors.sandybrown.rawValue)
    static let Seagreen = Color(hex:AdditionalColors.seagreen.rawValue)
    static let Seashell = Color(hex:AdditionalColors.seashell.rawValue)
    static let Sienna = Color(hex:AdditionalColors.sienna.rawValue)
    static let Silver = Color(hex:AdditionalColors.silver.rawValue)
    static let Skyblue = Color(hex:AdditionalColors.skyblue.rawValue)
    static let Slateblue = Color(hex:AdditionalColors.slateblue.rawValue)
    static let Slategray = Color(hex:AdditionalColors.slategray.rawValue)
    //  static let Slategrey = Color(hex:AdditionalColors.slategrey.rawValue)
    static let Snow = Color(hex:AdditionalColors.snow.rawValue)
    static let Springgreen = Color(hex:AdditionalColors.springgreen.rawValue)
    static let Steelblue = Color(hex:AdditionalColors.steelblue.rawValue)
    static let Tan = Color(hex:AdditionalColors.tan.rawValue)
    static let Teal = Color(hex:AdditionalColors.teal.rawValue)
    static let Thistle = Color(hex:AdditionalColors.thistle.rawValue)
    static let Tomato = Color(hex:AdditionalColors.tomato.rawValue)
    static let Turquoise = Color(hex:AdditionalColors.turquoise.rawValue)
    static let Violet = Color(hex:AdditionalColors.violet.rawValue)
    static let Wheat = Color(hex:AdditionalColors.wheat.rawValue)
    static let White = Color(hex:AdditionalColors.white.rawValue)
    static let Whitesmoke = Color(hex:AdditionalColors.whitesmoke.rawValue)
    static let Yellow = Color(hex:AdditionalColors.yellow.rawValue)
    static let Yellowgreen = Color(hex:AdditionalColors.yellowgreen.rawValue)
}

