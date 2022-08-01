//
//  ArmHair.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI

struct ArmHair: View {
    var body: some View {
        ZStack {
            Arm()
            
            ForEach(0..<250) { _ in
                Hair()
                    .offset(x: CGFloat(Int.random(in: -120...50)),
                            y: CGFloat(Int.random(in: -30...8)))
            }
        }
    }
}

struct ArmHair_Previews: PreviewProvider {
    static var previews: some View {
        ArmHair()
    }
}
