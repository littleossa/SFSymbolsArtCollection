//
//  SmallFirework.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/07.
//

import SwiftUI

struct mediumFirework: View {
    
    let color: Color
    let dotColor: Color
    
    var body: some View {
        ZStack {
            DrawingSymbol(.helm,
                          color: color,
                          width: 100,
                          height: 100)
            
            DrawingSymbol(.circleDotted,
                          color: dotColor,
                          width: 110,
                          height: 110)
            
            DrawingSymbol(.circleFill,
                          color: dotColor,
                          width: 15,
                          height: 15)
        }
    }
}

struct mediumFirework_Previews: PreviewProvider {
    static var previews: some View {
        mediumFirework(color: .lemonYellow, dotColor: .red)
    }
}
