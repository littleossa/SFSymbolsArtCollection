//
//  AnimalWhiskers.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI

struct AnimalWhiskers: View {
    
    let color: Color
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            DrawingSymbol(.rays,
                          color: color,
                          width: 100,
                          height: 40,
                          lineWeight: .regular)
            
            DrawingSymbol(.rectangleFill,
                          color: backgroundColor,
                          width: 60,
                          height: 50,
                          offsetX: 20)
        }
    }
}

struct AnimalWhiskers_Previews: PreviewProvider {
    static var previews: some View {
        AnimalWhiskers(color: .darkBrown, backgroundColor: .red)
    }
}
