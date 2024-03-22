//
//  SymbolArtPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct SymbolArtDisplayView: View {
    
    @Environment(ArtWorkModel.self) var model
    let shouldResizeForCoverArt: Bool
    let element: SymbolArtElement
    
    init(shouldResizeForCoverArt: Bool = true, element: SymbolArtElement) {
        self.shouldResizeForCoverArt = shouldResizeForCoverArt
        self.element = element
    }

    var body: some View {
        Image(systemName: element.name)
            .resizable()
            .foregroundStyle(element.primaryColor, element.secondaryColor)
            .fontWeight(element.fontWeight)
            .frame(
                width: model.calculatingProportionalValue(
                    withRatio: element.widthRatio,
                    shouldResizeForCoverArt: shouldResizeForCoverArt
                ),
                height: model.calculatingProportionalValue(
                    withRatio: element.heightRatio,
                    shouldResizeForCoverArt: shouldResizeForCoverArt
                )
            )
            .rotationEffect(.degrees(element.rotationDegrees))
            .rotation3DEffect(.degrees(180), axis: element.flip.axis)
            .offset(
                x: model.calculatingProportionalValue(
                    withRatio: element.horizontalOffsetRatio,
                    shouldResizeForCoverArt: shouldResizeForCoverArt
                ),
                y: model.calculatingProportionalValue(
                    withRatio: element.verticalOffsetRatio,
                    shouldResizeForCoverArt: shouldResizeForCoverArt
                )
            )
            .zIndex(element.zIndex)
    }
}

#Preview {
    VStack {
        SymbolArtDisplayView(element: AfroBoyArtView.Element.face.value)
        
        SymbolArtDisplayView(
            shouldResizeForCoverArt: false,
            element: AfroBoyArtView.Element.face.value
        )
    }
    .environment(ArtWorkModel.preview)
}
