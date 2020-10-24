# SwiftUIColorNames

convenient extension for using SwiftUI Color

## screen capture (of example app)

[screen capture](https://user-images.githubusercontent.com/6419800/97071300-6981b100-161a-11eb-8b94-6349b5143f10.png)

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

## where comes from?

color name and RGB comes from https://www.w3.org/TR/css-color-4/#named-colors

## any restriction?
to prevent duplicate key, following colors are disabled.

- Grey (and other Greys)
   use Gray
- Aqua
   use Cyan
- Fuchsia
   use Magenta



