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
