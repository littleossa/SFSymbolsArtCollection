//
//  iOSDCJapan2022Logo.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/31.
//

import SwiftUI

struct iOSDCJapan2022Logo: View {
    
    var body: some View {
        
        GeometryReader { proxy in
            
            let baseLength = proxy.baseLength * 2
            
            ZStack {
                ForEach(iOSDCJapan2022SymbolType.allCases) { type in
                    let appearance = type.configuration
                    
                    iOSDCJapan2022Symbol(size: baseLength * appearance.sizeMagnification,
                                         color: appearance.color)
                    .offset(x: baseLength * appearance.offsetXMagnification,
                            y: baseLength * appearance.offsetYMagnification)
                }
                
                Image(symbol: .circleSquareFill)
                    .arrangeShape(color: .white,
                                  fontSize: baseLength)
            }
            .position(proxy.localCenter)
        }
    }
}

struct iOSDCJapan2022Logo_Previews: PreviewProvider {
    static var previews: some View {
        iOSDCJapan2022Logo()
    }
}
