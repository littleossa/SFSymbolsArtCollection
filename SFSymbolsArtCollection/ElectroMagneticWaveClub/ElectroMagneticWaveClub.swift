//
//  ElectroMagneticWaveClub.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/05.
//

import SwiftUI

struct ElectroMagneticWaveClub: View {
    
    let backgroundColor = Color.white
    
    var body: some View {
        ZStack {
            ElectroMagneticWaveMan(magneticPole: .n,
                                   backgroundColor: backgroundColor)
            .offset(x: 60, y: -40)
            
            ElectroMagneticWaveMan(magneticPole: .s,
                                   backgroundColor: backgroundColor)
            .offset(x: -45, y: 110)
        }
    }
}

struct ElectroMagneticWaveClub_Previews: PreviewProvider {
    static var previews: some View {
        ElectroMagneticWaveClub()
    }
}
