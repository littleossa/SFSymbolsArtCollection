//
//  Building.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/06.
//

import SwiftUI

struct Building: View {
    
    let color: Color
    let lightColor: Color
    
    var body: some View {
        VStack {
            
            
            HStack(spacing: 0) {
                
                ZStack {
                    DrawingSymbol(.rectangleFill,
                                  color: lightColor,
                                  width: 80,
                                  height: 100)
                    
                    DrawingSymbol(.buildingFill,
                                  color: color,
                                  width: 80,
                                  height: 100)
                }
                .offset(x: 0, y: 40)
                
                ZStack {
                    DrawingSymbol(.rectangleFill,
                                  color: lightColor,
                                  width: 150,
                                  height: 180)
                    
                    DrawingSymbol(.buildingFill,
                                  color: color,
                                  width: 150,
                                  height: 180)
                }
            }
        }
    }
}

struct Building_Previews: PreviewProvider {
    static var previews: some View {
        Building(color: .black, lightColor: .yellow)
    }
}
