//
//  Building.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/06.
//

import SwiftUI

struct Building: View {
    
    let fontSize: CGFloat
    let color: Color
    let lightColor: Color
    
    var body: some View {
        
        ZStack {
            
//            Image(symbol: .rectanglePortraitFill)
//                .arrangeShape(color: lightColor,
//                              fontSize: fontSize * 0.9)
//            
//            Image(symbol: .buildingFill)
//                .arrangeShape(color: color,
//                              fontSize: fontSize)
        }
    }
}

struct Building_Previews: PreviewProvider {
    static var previews: some View {
        Building(fontSize: 180,
                 color: .black,
                 lightColor: .yellow)
    }
}
