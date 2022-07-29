//
//  AnimalEye.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct AnimalEye: View {
    
    let eyeColor: Color
    
    var body: some View {
        ZStack {
            DrawingSymbol(.circleFill,
                          color: eyeColor,
                          width: 20,
                          height: 20)
            DrawingSymbol(.circleFill,
                          color: .white,
                          width: 8,
                          height: 8)
        }
    }
}

struct AnimalEye_Previews: PreviewProvider {
    static var previews: some View {
        AnimalEye(eyeColor: Color(uiColor: .brown))
    }
}
