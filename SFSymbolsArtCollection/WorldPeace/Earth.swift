//
//  Earth.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct Earth: View {
    var body: some View {
        ZStack {
            DrawingSymbol(.circleFill,
                          color: .cyan,
                          width: 200, height: 200)
            
            DrawingSymbol(.globeAsiaAustraliaFill,
                          color: .green,
                          width: 200,
                          height: 200,
                          lineWeight: .ultraLight)
            
            DrawingSymbol(.globeAsiaAustralia,
                          width: 200,
                          height: 200,
                          lineWeight: .ultraLight)
        }
    }
}

struct Earth_Previews: PreviewProvider {
    static var previews: some View {
        Earth()
    }
}
