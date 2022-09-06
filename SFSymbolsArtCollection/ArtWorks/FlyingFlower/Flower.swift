//
//  Flower.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/04/26.
//

import SwiftUI

struct Flower: View {
    var body: some View {
        ZStack {
            DrawingSymbol(.cameraMacro, color: .green, width: 80, height: 100)
            
            DrawingSymbol(.ovalPortraitFill, color: .pink, width: 50, height: 60, offsetY: -30)
            
            DrawingSymbol(.rhombusFill, color: .white, width: 50, height: 60, offsetX: 9, offsetY: -70)
            
            DrawingSymbol(.rhombusFill, color: .white, width: 50, height: 60, offsetX: -9, offsetY: -70)
        }
    }
}

struct Flower_Previews: PreviewProvider {
    static var previews: some View {
        Flower()
    }
}
