//
//  ContentView.swift
//  PaletteSwiftUI
//
//  Created by Maxim Dukin on 30.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            Palette(color: Color(
                red: redSliderValue / 255,
                green: greenSliderValue / 255,
                blue: blueSliderValue / 255
            ))
            
            Slider(value: $redSliderValue, in: 0...255, step: 1).tint(.red)
            Slider(value: $greenSliderValue, in: 0...255, step: 1).tint(.green)
            Slider(value: $blueSliderValue, in: 0...255, step: 1).tint(.blue)
            
            Spacer()
        }
        .padding()
        .background(Color(red: 0.16, green: 0.41, blue: 0.71))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
