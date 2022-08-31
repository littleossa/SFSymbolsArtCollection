//
//  iOSDCJapan2022Logo.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/31.
//

import SwiftUI

struct iOSDCJapan2022Logo: View {
    var body: some View {
        ZStack {
            iOSDCJapan2022Symbol(size: 130,
                                 color: .green)
            .offset(x: -45, y: 70)
            
            iOSDCJapan2022Symbol(size: 100,
                                 color: .orange)
            .offset(x: 35, y: -95)
            
            iOSDCJapan2022Symbol(size: 85,
                                 color: .blue)
            .offset(x: 125, y: 43)
            
            iOSDCJapan2022Symbol(size: 55,
                                 color: .pink)
            .offset(x: -90, y: -75)
            
            Image(systemName: "circle.square.fill")
                .font(.system(size: 500,
                              weight: .regular,
                              design: .default))
                .foregroundColor(.white)
        }
        
    }
}

struct iOSDCJapan2022Logo_Previews: PreviewProvider {
    static var previews: some View {
        iOSDCJapan2022Logo()
    }
}
