# SwiftUIColorNames

convenient extension for using SwiftUI Color

## screen capture (of example app)

![screen capture](https://user-images.githubusercontent.com/6419800/97071300-6981b100-161a-11eb-8b94-6349b5143f10.png)

## example app/code
~~~
//
//  ContentView.swift
//
//  Created by : Tomoaki Yagishita on 2020/10/24
//  © 2020  SmallDeskSoftware
//

import SwiftUI
import SwiftUIColorNames

struct ContentView: View {
  var body: some View {
    List( Color.AdditionalColors.allCases, id:\.self) { color in
      ZStack {
        Color(hex: color.rawValue)
        Text("\(Color.mapValueToName[color.rawValue] ?? "invalid Color")")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
~~~

## Main functionalities
### use color with name
You can specify the color with its name (in W3C/ApplePalletColor) like 
```
let favoriteColor = Color.gold                // :)
let nextFavColor = Color.ApplePalletBrown
```
Note: to avoid name conflict with SwiftUI, name of all W3C colors starts with lowercase character. 

for color in apple pallet, it starts with "ApplePallet" prefix.

### able to convert between "color name" and "its RGB value"

2 dictionaries are there.

#### ApplePalletColorMapValueToName, ApplePalletColorMapNameToValue
convert between "ColorPallet/Apple" to "RGB values" like
```
let rgbValue: UInt32 = ApplePalletColorMapNameToValue["Brown"]
let anotherRgbValue = ...
let colorName = ApplePalletColorMapNameToValue[anotherRgbValue] ?? "undefined in pallet"
```


Note: what is "ColorPallet/Apple"? -> please refer to followings.
![screen capture](https://user-images.githubusercontent.com/6419800/117290684-103be980-aea9-11eb-9ca3-2679c813f177.png)

note: Colors in "ColorPallet Apple" is different from SwiftUI Colors.

### W3CColorMapValueToName, W3CColorMapNameToValue
convert between "W3C named color" to "RGB values" like
```
let rgbValue: UInt32 = W3CColorMapNameToValue["Brown"]
let anotherRgbValue = ...
let colorName = W3CColorMapValueToName[anotherRgbValue] ?? "undefined in W3C"
```

## where comes from?

color name and RGB values comes from https://www.w3.org/TR/css-color-4/#named-colors

## any restriction?
to prevent duplicate key, following colors are disabled.

- Grey (and other Greys)
  - use Gray
- Aqua
  - use Cyan
- Fuchsia
  - use Magenta
  
## Note: SwiftUI definition is different from this extension
You can use Color.red (comes from SwiftUI) and Color.Red (comes from this extension) even both means same color.

## Color Name list
1. Aliceblue
1. Antiquewhite
1. Aquamarine
1. Azure
1. Beige
1. Bisque
1. Black
1. Blanchedalmond
1. Blue
1. Blueviolet
1. Brown
1. Burlywood
1. Cadetblue
1. Chartreuse
1. Chocolate
1. Coral
1. Cornflowerblue
1. Cornsilk
1. Crimson
1. Cyan
1. Darkblue
1. Darkcyan
1. Darkgoldenrod
1. Darkgray
1. Darkgreen
1. Darkkhaki
1. Darkmagenta
1. Darkolivegreen
1. Darkorange
1. Darkorchid
1. Darkred
1. Darksalmon
1. Darkseagreen
1. Darkslateblue
1. Darkslategray
1. Darkturquoise
1. Darkviolet
1. Deeppink
1. Deepskyblue
1. Dimgray
1. Dodgerblue
1. Firebrick
1. Floralwhite
1. Forestgreen
1. Gainsboro
1. Ghostwhite
1. Gold
1. Goldenrod
1. Gray
1. Green
1. Greenyellow
1. Honeydew
1. Hotpink
1. Indianred
1. Indigo
1. Ivory
1. Khaki
1. Lavender
1. Lavenderblush
1. Lawngreen
1. Lemonchiffon
1. Lightblue
1. Lightcoral
1. Lightcyan
1. Lightgoldenrodyellow
1. Lightgray
1. Lightgreen
1. Lightpink
1. Lightsalmon
1. Lightseagreen
1. Lightskyblue
1. Lightslategray
1. Lightsteelblue
1. Lightyellow
1. Lime
1. Limegreen
1. Linen
1. Magenta
1. Maroon
1. Mediumaquamarine
1. Mediumblue
1. Mediumorchid
1. Mediumpurple
1. Mediumseagreen
1. Mediumslateblue
1. Mediumspringgreen
1. Mediumturquoise
1. Mediumvioletred
1. Midnightblue
1. Mintcream
1. Mistyrose
1. Moccasin
1. Navajowhite
1. Navy
1. Oldlace
1. Olive
1. Olivedrab
1. Orange
1. Orangered
1. Orchid
1. Palegoldenrod
1. Palegreen
1. Paleturquoise
1. Palevioletred
1. Papayawhip
1. Peachpuff
1. Peru
1. Pink
1. Plum
1. Powderblue
1. Purple
1. Rebeccapurple
1. Red
1. Rosybrown
1. Royalblue
1. Saddlebrown
1. Salmon
1. Sandybrown
1. Seagreen
1. Seashell
1. Sienna
1. Silver
1. Skyblue
1. Slateblue
1. Slategray
1. Snow
1. Springgreen
1. Steelblue
1. Tan
1. Teal
1. Thistle
1. Tomato
1. Turquoise
1. Violet
1. Wheat
1. White
1. Whitesmoke
1. Yellow
1. Yellowgreen



