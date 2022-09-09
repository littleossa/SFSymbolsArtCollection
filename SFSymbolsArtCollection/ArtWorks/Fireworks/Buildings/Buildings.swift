//
//  Buildings.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/03.
//

import SwiftUI

struct Buildings: View {
    
    let baseLength: CGFloat
    let color: Color
    let lightColor: Color
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            Spacer()
            
            Building(fontSize: baseLength * 0.25,
                     color: color,
                     lightColor: lightColor)
            .offset(x: baseLength * 0.09,
                    y: baseLength * 0.1)
            
            Building(fontSize: baseLength * 0.45,
                     color: color,
                     lightColor: lightColor)
            
            Spacer()
        }
        .offset(x: baseLength * -0.05,
                y: 0)
    }
}

struct Buildings_Previews: PreviewProvider {
    static var previews: some View {
        Buildings(baseLength: 400,
                  color: .black,
                  lightColor: .yellow)
    }
}
