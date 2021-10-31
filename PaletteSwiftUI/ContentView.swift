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
            ColorSliderView(value: $redSliderValue, tintColor: .red)
            ColorSliderView(value: $greenSliderValue, tintColor: .green)
            ColorSliderView(value: $blueSliderValue, tintColor: .blue)
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

struct ColorSliderView: View {
    @Binding var value: Double
    let tintColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
                .frame(width: 40)
            
            Slider(value: $value, in: 0...255, step: 1).tint(tintColor)
        }
    }
}
