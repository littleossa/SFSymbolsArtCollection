//
//  Firework.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/06.
//

import SwiftUI

struct Firework: View {
    
    let color: Color
    let dotColor: Color
    
    var body: some View {
        ZStack {
            DrawingSymbol(.dotRadiowavesRight,
                          color: color,
                          width: 100,
                          height: 100,
                          offsetX: 40)
            DrawingSymbol(.dotRadiowavesRight,
                          color: color,
                          width: 100,
                          height: 100,
                          flipType: .horizontal,
                          offsetX: -40)
            DrawingSymbol(.dotRadiowavesRight,
                          color: color,
                          width: 100,
                          height: 100,
                          rotationDegrees: 90,
                          offsetY: -38)
            DrawingSymbol(.dotRadiowavesRight,
                          color: color,
                          width: 100,
                          height: 100,
                          rotationDegrees: -90,
                          offsetY: 38)
            
            DrawingSymbol(.circleDotted,
                          color: dotColor,
                          width: 230,
                          height: 230,
                          lineWeight: .ultraLight,
                          rotationDegrees: -90,
                          offsetY: 2)
            
            DrawingSymbol(.circleFill,
                          color: dotColor,
                          width: 29,
                          height: 29)
        }
    }
}

struct Firework_Previews: PreviewProvider {
    static var previews: some View {
        Firework(color: .red, dotColor: .yellow)
    }
}
