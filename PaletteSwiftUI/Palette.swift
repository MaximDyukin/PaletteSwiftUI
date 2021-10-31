//
//  Palette.swift
//  PaletteSwiftUI
//
//  Created by Maxim Dukin on 30.10.2021.
//

import SwiftUI

struct Palette: View {
    let color: Color
    
    var body: some View {
        Rectangle()
            .frame(height: 130)
            .foregroundColor(color)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(.white, lineWidth: 3))
    }
}

struct Palette_Previews: PreviewProvider {
    static var previews: some View {
        Palette(color: .red)
    }
}
