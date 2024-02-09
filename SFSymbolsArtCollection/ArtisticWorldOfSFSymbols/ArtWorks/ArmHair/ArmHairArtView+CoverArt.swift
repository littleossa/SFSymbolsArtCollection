//
//  ArmHairArtView+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension ArmHairArtView {
    
    struct CoverArt: View {
        
        @Environment(ArtWorkModel.self) var model
        
        var hairOffset: CGSize {
            let lowestX = model.calculatingProportionalValue(withRatio: -0.14, shouldResizeForCoverImage: true)
            let highestX = model.calculatingProportionalValue(withRatio: 0.246, shouldResizeForCoverImage: true)
            let lowestY = model.calculatingProportionalValue(withRatio: -0.075, shouldResizeForCoverImage: true)
            let highestY = model.calculatingProportionalValue(withRatio: 0.02, shouldResizeForCoverImage: true)
            return CGSize(
                width: CGFloat.random(in: lowestX...highestX),
                height: CGFloat.random(in: lowestY...highestY)
            )
        }
        
        var body: some View {
            ZStack {
                ForEach(Element.allCases) {
                    SymbolArtDisplayView(shouldResizeForCoverImage: true, element: $0.value)
                }
                
                ForEach(0..<260) { _ in
                    Image(systemName: "alternatingcurrent")
                        .foregroundStyle(.black)
                        .font(.system(size: model.calculatingProportionalValue(withRatio: 0.0825, shouldResizeForCoverImage: true)))
                        .fontWeight(.thin)
                        .rotationEffect(.degrees(100))
                        .offset(hairOffset)
                }
            }
        }
    }
}

#Preview {
    ArmHairArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
