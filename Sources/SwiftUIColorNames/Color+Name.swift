//
//  Color+Name.swift
//
//  Created by : Tomoaki Yagishita on 2020/10/24
//  © 2020  SmallDeskSoftware
//

import Foundation
import SwiftUI

//public extension Color {
//  init(redValue: Int, greenValue: Int, blueValue: Int)  {
//    self.init(red: Double(Color.red)/256.0, green: Double(greenValue)/256.0, blue: Double(blueValue)/256.0)
//  }
//}
//

extension Color {
  static var colorMap:[String:UInt32] {
    return [
             "aliceblue":0xf0f8ff,
             "antiquewhite":0xfaebd7,
             "aqua":0x00ffff,
             "aquamarine":0x7fffd4,
             "azure":0xf0ffff,
             "beige":0xf5f5dc,
             "bisque":0xffe4c4,
             "black":0x000000,
             "blanchedalmond":0xffebcd,
             "blue":0x0000ff,
             "blueviolet":0x8a2be2,
             "brown":0xa52a2a,
             "burlywood":0xdeb887,
             "cadetblue":0x5f9ea0,
             "chartreuse":0x7fff00,
             "chocolate":0xd2691e,
             "coral":0xff7f50,
             "cornflowerblue":0x6495ed,
             "cornsilk":0xfff8dc,
             "crimson":0xdc143c,
             "cyan":0x00ffff,
             "darkblue":0x00008b,
             "darkcyan":0x008b8b,
             "darkgoldenrod":0xb8860b,
             "darkgray":0xa9a9a9,
             "darkgreen":0x006400,
             "darkgrey":0xa9a9a9,
             "darkkhaki":0xbdb76b,
             "darkmagenta":0x8b008b,
             "darkolivegreen":0x556b2f,
             "darkorange":0xff8c00,
             "darkorchid":0x9932cc,
             "darkred":0x8b0000,
             "darksalmon":0xe9967a,
             "darkseagreen":0x8fbc8f,
             "darkslateblue":0x483d8b,
             "darkslategray":0x2f4f4f,
             "darkslategrey":0x2f4f4f,
             "darkturquoise":0x00ced1,
             "darkviolet":0x9400d3,
             "deeppink":0xff1493,
             "deepskyblue":0x00bfff,
             "dimgray":0x696969,
             "dimgrey":0x696969,
             "dodgerblue":0x1e90ff,
             "firebrick":0xb22222,
             "floralwhite":0xfffaf0,
             "forestgreen":0x228b22,
             "fuchsia":0xff00ff,
             "gainsboro":0xdcdcdc,
             "ghostwhite":0xf8f8ff,
             "gold":0xffd700,
             "goldenrod":0xdaa520,
             "gray":0x808080,
             "green":0x008000,
             "greenyellow":0xadff2f,
             "grey":0x808080,
             "honeydew":0xf0fff0,
             "hotpink":0xff69b4,
             "indianred":0xcd5c5c,
             "indigo":0x4b0082,
             "ivory":0xfffff0,
             "khaki":0xf0e68c,
             "lavender":0xe6e6fa,
             "lavenderblush":0xfff0f5,
             "lawngreen":0x7cfc00,
             "lemonchiffon":0xfffacd,
             "lightblue":0xadd8e6,
             "lightcoral":0xf08080,
             "lightcyan":0xe0ffff,
             "lightgoldenrodyellow":0xfafad2,
             "lightgray":0xd3d3d3,
             "lightgreen":0x90ee90,
             "lightgrey":0xd3d3d3,
             "lightpink":0xffb6c1,
             "lightsalmon":0xffa07a,
             "lightseagreen":0x20b2aa,
             "lightskyblue":0x87cefa,
             "lightslategray":0x778899,
             "lightslategrey":0x778899,
             "lightsteelblue":0xb0c4de,
             "lightyellow":0xffffe0,
             "lime":0x00ff00,
             "limegreen":0x32cd32,
             "linen":0xfaf0e6,
             "magenta":0xff00ff,
             "maroon":0x800000,
             "mediumaquamarine":0x66cdaa,
             "mediumblue":0x0000cd,
             "mediumorchid":0xba55d3,
             "mediumpurple":0x9370db,
             "mediumseagreen":0x3cb371,
             "mediumslateblue":0x7b68ee,
             "mediumspringgreen":0x00fa9a,
             "mediumturquoise":0x48d1cc,
             "mediumvioletred":0xc71585,
             "midnightblue":0x191970,
             "mintcream":0xf5fffa,
             "mistyrose":0xffe4e1,
             "moccasin":0xffe4b5,
             "navajowhite":0xffdead,
             "navy":0x000080,
             "oldlace":0xfdf5e6,
             "olive":0x808000,
             "olivedrab":0x6b8e23,
             "orange":0xffa500,
             "orangered":0xff4500,
             "orchid":0xda70d6,
             "palegoldenrod":0xeee8aa,
             "palegreen":0x98fb98,
             "paleturquoise":0xafeeee,
             "palevioletred":0xdb7093,
             "papayawhip":0xffefd5,
             "peachpuff":0xffdab9,
             "peru":0xcd853f,
             "pink":0xffc0cb,
             "plum":0xdda0dd,
             "powderblue":0xb0e0e6,
             "purple":0x800080,
             "rebeccapurple":0x663399,
             "red":0xff0000,
             "rosybrown":0xbc8f8f,
             "royalblue":0x4169e1,
             "saddlebrown":0x8b4513,
             "salmon":0xfa8072,
             "sandybrown":0xf4a460,
             "seagreen":0x2e8b57,
             "seashell":0xfff5ee,
             "sienna":0xa0522d,
             "silver":0xc0c0c0,
             "skyblue":0x87ceeb,
             "slateblue":0x6a5acd,
             "slategray":0x708090,
             "slategrey":0x708090,
             "snow":0xfffafa,
             "springgreen":0x00ff7f,
             "steelblue":0x4682b4,
             "tan":0xd2b48c,
             "teal":0x008080,
             "thistle":0xd8bfd8,
             "tomato":0xff6347,
             "turquoise":0x40e0d0,
             "violet":0xee82ee,
             "wheat":0xf5deb3,
             "white":0xffffff,
             "whitesmoke":0xf5f5f5,
             "yellow":0xffff00,
             "yellowgreen":0x9acd32
    ]
  }
}

extension Color {
  init(red: Int, green: Int, blue: Int) {
    self.init(red: Double(red)/256, green: Double(green)/256, blue: Double(blue)/256)
  }
  init(hex: UInt32) {
    let last16 = UInt32(0xFF)
    let rValue:UInt32 = (hex >> 16) & last16
    let gValue:UInt32 = (hex >> 8) & last16
    let bValue:UInt32 = (hex >> 0) & last16
    self.init(.sRGB, red: Double(rValue)/256, green: Double(gValue)/256, blue: Double(bValue)/256, opacity: 1.0)
  }
  enum AdditionalColors: UInt32{
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
  
//  public static let Silver = Color(.sRGB, red: 192/256, green: 192/256, blue: 192/256, opacity: 1.0)
//  public static let Silver = Color(red: 0xC0, green: 0xC0, blue: 0xC0)
  public static let Aliceblue = Color(hex:AdditionalColors.aliceblue.rawValue)
  public static let Antiquewhite = Color(hex:AdditionalColors.antiquewhite.rawValue)
//  public static let Aqua = Color(hex:AdditionalColors.aqua.rawValue)
  public static let Aquamarine = Color(hex:AdditionalColors.aquamarine.rawValue)
  public static let Azure = Color(hex:AdditionalColors.azure.rawValue)
  public static let Beige = Color(hex:AdditionalColors.beige.rawValue)
  public static let Bisque = Color(hex:AdditionalColors.bisque.rawValue)
  public static let Black = Color(hex:AdditionalColors.black.rawValue)
  public static let Blanchedalmond = Color(hex:AdditionalColors.blanchedalmond.rawValue)
  public static let Blue = Color(hex:AdditionalColors.blue.rawValue)
  public static let Blueviolet = Color(hex:AdditionalColors.blueviolet.rawValue)
  public static let Brown = Color(hex:AdditionalColors.brown.rawValue)
  public static let Burlywood = Color(hex:AdditionalColors.burlywood.rawValue)
  public static let Cadetblue = Color(hex:AdditionalColors.cadetblue.rawValue)
  public static let Chartreuse = Color(hex:AdditionalColors.chartreuse.rawValue)
  public static let Chocolate = Color(hex:AdditionalColors.chocolate.rawValue)
  public static let Coral = Color(hex:AdditionalColors.coral.rawValue)
  public static let Cornflowerblue = Color(hex:AdditionalColors.cornflowerblue.rawValue)
  public static let Cornsilk = Color(hex:AdditionalColors.cornsilk.rawValue)
  public static let Crimson = Color(hex:AdditionalColors.crimson.rawValue)
  public static let Cyan = Color(hex:AdditionalColors.cyan.rawValue)
  public static let Darkblue = Color(hex:AdditionalColors.darkblue.rawValue)
  public static let Darkcyan = Color(hex:AdditionalColors.darkcyan.rawValue)
  public static let Darkgoldenrod = Color(hex:AdditionalColors.darkgoldenrod.rawValue)
  public static let Darkgray = Color(hex:AdditionalColors.darkgray.rawValue)
  public static let Darkgreen = Color(hex:AdditionalColors.darkgreen.rawValue)
//  public static let Darkgrey = Color(hex:AdditionalColors.darkgrey.rawValue)
  public static let Darkkhaki = Color(hex:AdditionalColors.darkkhaki.rawValue)
  public static let Darkmagenta = Color(hex:AdditionalColors.darkmagenta.rawValue)
  public static let Darkolivegreen = Color(hex:AdditionalColors.darkolivegreen.rawValue)
  public static let Darkorange = Color(hex:AdditionalColors.darkorange.rawValue)
  public static let Darkorchid = Color(hex:AdditionalColors.darkorchid.rawValue)
  public static let Darkred = Color(hex:AdditionalColors.darkred.rawValue)
  public static let Darksalmon = Color(hex:AdditionalColors.darksalmon.rawValue)
  public static let Darkseagreen = Color(hex:AdditionalColors.darkseagreen.rawValue)
  public static let Darkslateblue = Color(hex:AdditionalColors.darkslateblue.rawValue)
  public static let Darkslategray = Color(hex:AdditionalColors.darkslategray.rawValue)
//  public static let Darkslategrey = Color(hex:AdditionalColors.darkslategrey.rawValue)
  public static let Darkturquoise = Color(hex:AdditionalColors.darkturquoise.rawValue)
  public static let Darkviolet = Color(hex:AdditionalColors.darkviolet.rawValue)
  public static let Deeppink = Color(hex:AdditionalColors.deeppink.rawValue)
  public static let Deepskyblue = Color(hex:AdditionalColors.deepskyblue.rawValue)
  public static let Dimgray = Color(hex:AdditionalColors.dimgray.rawValue)
//  public static let Dimgrey = Color(hex:AdditionalColors.dimgrey.rawValue)
  public static let Dodgerblue = Color(hex:AdditionalColors.dodgerblue.rawValue)
  public static let Firebrick = Color(hex:AdditionalColors.firebrick.rawValue)
  public static let Floralwhite = Color(hex:AdditionalColors.floralwhite.rawValue)
  public static let Forestgreen = Color(hex:AdditionalColors.forestgreen.rawValue)
//  public static let Fuchsia = Color(hex:AdditionalColors.fuchsia.rawValue)
  public static let Gainsboro = Color(hex:AdditionalColors.gainsboro.rawValue)
  public static let Ghostwhite = Color(hex:AdditionalColors.ghostwhite.rawValue)
  public static let Gold = Color(hex:AdditionalColors.gold.rawValue)
  public static let Goldenrod = Color(hex:AdditionalColors.goldenrod.rawValue)
  public static let Gray = Color(hex:AdditionalColors.gray.rawValue)
  public static let Green = Color(hex:AdditionalColors.green.rawValue)
  public static let Greenyellow = Color(hex:AdditionalColors.greenyellow.rawValue)
//  public static let Grey = Color(hex:AdditionalColors.grey.rawValue)
  public static let Honeydew = Color(hex:AdditionalColors.honeydew.rawValue)
  public static let Hotpink = Color(hex:AdditionalColors.hotpink.rawValue)
  public static let Indianred = Color(hex:AdditionalColors.indianred.rawValue)
  public static let Indigo = Color(hex:AdditionalColors.indigo.rawValue)
  public static let Ivory = Color(hex:AdditionalColors.ivory.rawValue)
  public static let Khaki = Color(hex:AdditionalColors.khaki.rawValue)
  public static let Lavender = Color(hex:AdditionalColors.lavender.rawValue)
  public static let Lavenderblush = Color(hex:AdditionalColors.lavenderblush.rawValue)
  public static let Lawngreen = Color(hex:AdditionalColors.lawngreen.rawValue)
  public static let Lemonchiffon = Color(hex:AdditionalColors.lemonchiffon.rawValue)
  public static let Lightblue = Color(hex:AdditionalColors.lightblue.rawValue)
  public static let Lightcoral = Color(hex:AdditionalColors.lightcoral.rawValue)
  public static let Lightcyan = Color(hex:AdditionalColors.lightcyan.rawValue)
  public static let Lightgoldenrodyellow = Color(hex:AdditionalColors.lightgoldenrodyellow.rawValue)
  public static let Lightgray = Color(hex:AdditionalColors.lightgray.rawValue)
  public static let Lightgreen = Color(hex:AdditionalColors.lightgreen.rawValue)
//  public static let Lightgrey = Color(hex:AdditionalColors.lightgrey.rawValue)
  public static let Lightpink = Color(hex:AdditionalColors.lightpink.rawValue)
  public static let Lightsalmon = Color(hex:AdditionalColors.lightsalmon.rawValue)
  public static let Lightseagreen = Color(hex:AdditionalColors.lightseagreen.rawValue)
  public static let Lightskyblue = Color(hex:AdditionalColors.lightskyblue.rawValue)
  public static let Lightslategray = Color(hex:AdditionalColors.lightslategray.rawValue)
//  public static let Lightslategrey = Color(hex:AdditionalColors.lightslategrey.rawValue)
  public static let Lightsteelblue = Color(hex:AdditionalColors.lightsteelblue.rawValue)
  public static let Lightyellow = Color(hex:AdditionalColors.lightyellow.rawValue)
  public static let Lime = Color(hex:AdditionalColors.lime.rawValue)
  public static let Limegreen = Color(hex:AdditionalColors.limegreen.rawValue)
  public static let Linen = Color(hex:AdditionalColors.linen.rawValue)
  public static let Magenta = Color(hex:AdditionalColors.magenta.rawValue)
  public static let Maroon = Color(hex:AdditionalColors.maroon.rawValue)
  public static let Mediumaquamarine = Color(hex:AdditionalColors.mediumaquamarine.rawValue)
  public static let Mediumblue = Color(hex:AdditionalColors.mediumblue.rawValue)
  public static let Mediumorchid = Color(hex:AdditionalColors.mediumorchid.rawValue)
  public static let Mediumpurple = Color(hex:AdditionalColors.mediumpurple.rawValue)
  public static let Mediumseagreen = Color(hex:AdditionalColors.mediumseagreen.rawValue)
  public static let Mediumslateblue = Color(hex:AdditionalColors.mediumslateblue.rawValue)
  public static let Mediumspringgreen = Color(hex:AdditionalColors.mediumspringgreen.rawValue)
  public static let Mediumturquoise = Color(hex:AdditionalColors.mediumturquoise.rawValue)
  public static let Mediumvioletred = Color(hex:AdditionalColors.mediumvioletred.rawValue)
  public static let Midnightblue = Color(hex:AdditionalColors.midnightblue.rawValue)
  public static let Mintcream = Color(hex:AdditionalColors.mintcream.rawValue)
  public static let Mistyrose = Color(hex:AdditionalColors.mistyrose.rawValue)
  public static let Moccasin = Color(hex:AdditionalColors.moccasin.rawValue)
  public static let Navajowhite = Color(hex:AdditionalColors.navajowhite.rawValue)
  public static let Navy = Color(hex:AdditionalColors.navy.rawValue)
  public static let Oldlace = Color(hex:AdditionalColors.oldlace.rawValue)
  public static let Olive = Color(hex:AdditionalColors.olive.rawValue)
  public static let Olivedrab = Color(hex:AdditionalColors.olivedrab.rawValue)
  public static let Orange = Color(hex:AdditionalColors.orange.rawValue)
  public static let Orangered = Color(hex:AdditionalColors.orangered.rawValue)
  public static let Orchid = Color(hex:AdditionalColors.orchid.rawValue)
  public static let Palegoldenrod = Color(hex:AdditionalColors.palegoldenrod.rawValue)
  public static let Palegreen = Color(hex:AdditionalColors.palegreen.rawValue)
  public static let Paleturquoise = Color(hex:AdditionalColors.paleturquoise.rawValue)
  public static let Palevioletred = Color(hex:AdditionalColors.palevioletred.rawValue)
  public static let Papayawhip = Color(hex:AdditionalColors.papayawhip.rawValue)
  public static let Peachpuff = Color(hex:AdditionalColors.peachpuff.rawValue)
  public static let Peru = Color(hex:AdditionalColors.peru.rawValue)
  public static let Pink = Color(hex:AdditionalColors.pink.rawValue)
  public static let Plum = Color(hex:AdditionalColors.plum.rawValue)
  public static let Powderblue = Color(hex:AdditionalColors.powderblue.rawValue)
  public static let Purple = Color(hex:AdditionalColors.purple.rawValue)
  public static let Rebeccapurple = Color(hex:AdditionalColors.rebeccapurple.rawValue)
  public static let Red = Color(hex:AdditionalColors.red.rawValue)
  public static let Rosybrown = Color(hex:AdditionalColors.rosybrown.rawValue)
  public static let Royalblue = Color(hex:AdditionalColors.royalblue.rawValue)
  public static let Saddlebrown = Color(hex:AdditionalColors.saddlebrown.rawValue)
  public static let Salmon = Color(hex:AdditionalColors.salmon.rawValue)
  public static let Sandybrown = Color(hex:AdditionalColors.sandybrown.rawValue)
  public static let Seagreen = Color(hex:AdditionalColors.seagreen.rawValue)
  public static let Seashell = Color(hex:AdditionalColors.seashell.rawValue)
  public static let Sienna = Color(hex:AdditionalColors.sienna.rawValue)
  public static let Silver = Color(hex:AdditionalColors.silver.rawValue)
  public static let Skyblue = Color(hex:AdditionalColors.skyblue.rawValue)
  public static let Slateblue = Color(hex:AdditionalColors.slateblue.rawValue)
  public static let Slategray = Color(hex:AdditionalColors.slategray.rawValue)
//  public static let Slategrey = Color(hex:AdditionalColors.slategrey.rawValue)
  public static let Snow = Color(hex:AdditionalColors.snow.rawValue)
  public static let Springgreen = Color(hex:AdditionalColors.springgreen.rawValue)
  public static let Steelblue = Color(hex:AdditionalColors.steelblue.rawValue)
  public static let Tan = Color(hex:AdditionalColors.tan.rawValue)
  public static let Teal = Color(hex:AdditionalColors.teal.rawValue)
  public static let Thistle = Color(hex:AdditionalColors.thistle.rawValue)
  public static let Tomato = Color(hex:AdditionalColors.tomato.rawValue)
  public static let Turquoise = Color(hex:AdditionalColors.turquoise.rawValue)
  public static let Violet = Color(hex:AdditionalColors.violet.rawValue)
  public static let Wheat = Color(hex:AdditionalColors.wheat.rawValue)
  public static let White = Color(hex:AdditionalColors.white.rawValue)
  public static let Whitesmoke = Color(hex:AdditionalColors.whitesmoke.rawValue)
  public static let Yellow = Color(hex:AdditionalColors.yellow.rawValue)
  public static let Yellowgreen = Color(hex:AdditionalColors.yellowgreen.rawValue)

}

