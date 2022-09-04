//
//  SmallFirework.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/03.
//

import SwiftUI

struct SmallFirework: View {
    
    let color: Color
    let fontSize: CGFloat
    let offsetX: CGFloat
    let offsetY: CGFloat
    
    var body: some View {
        
        Image(symbol: .timelapse)
            .arrangeShape(color: color,
                          fontSize: fontSize,
                          offsetX: offsetX,
                          offsetY: offsetY)
    }
}

struct SmallFirework_Previews: PreviewProvider {
    static var previews: some View {
        SmallFirework(color: .pink,
                      fontSize: 50,
                      offsetX: 0,
                      offsetY: 0)
    }
}
