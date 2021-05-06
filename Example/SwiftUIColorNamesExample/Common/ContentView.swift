//
//  ContentView.swift
//
//  Created by : Tomoaki Yagishita on 2020/10/24
//  © 2020  SmallDeskSoftware
//

import SwiftUI
import SwiftUIColorNames

struct ContentView: View {
    @State private var colorToBeChecked = Color.white
    var body: some View {
        TabView {

            VStack {
                ColorPicker("Color Picker", selection: $colorToBeChecked)
                    .padding()
                Text("description of color: \(colorToBeChecked.description)")
                    .padding()
                Text("Color RGB value : \(colorToBeChecked.rgbValueStr)")
//                    .contextMenu(ContextMenu(menuItems: {
//                        Button("Copy", action: {
//                            NSPasteboard.general.clearContents()
//                            NSPasteboard.general.setString(colorToBeChecked.rgbValueStr, forType: .string)
//                        })
//                    }))
                    .padding()
                Text("color name from W3C : \(Color.W3CColorMapValueToName[colorToBeChecked.rgbUInt32] ?? "undefined")")
                    .padding()
                Text("color name from Apple : \(Color.ApplePalletColorMapValueToName[colorToBeChecked.rgbUInt32] ?? "undefined")")
                    .padding()

            }
            .tabItem{ Text("Color check") }
            VStack {
                List( Color.AdditionalColors.allCases, id:\.self) { color in
                    ZStack {
                        Color(hex: color.rawValue)
                        Text("\(Color.W3CColorMapValueToName[color.rawValue] ?? "invalid Color")")
                    }
                }
            }
            .tabItem{ Text("Color Names") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
