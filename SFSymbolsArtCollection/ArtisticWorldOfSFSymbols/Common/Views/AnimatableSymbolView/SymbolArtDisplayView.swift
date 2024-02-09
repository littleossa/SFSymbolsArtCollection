//
//  SymbolArtPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct SymbolArtDisplayView: View {
    
    @Environment(ArtWorkModel.self) var model
    let shouldResizeForCoverImage: Bool
    let element: SymbolArtElement
    
    init(shouldResizeForCoverImage: Bool = true, element: SymbolArtElement) {
        self.shouldResizeForCoverImage = shouldResizeForCoverImage
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
                    shouldResizeForCoverImage: shouldResizeForCoverImage
                ),
                height: model.calculatingProportionalValue(
                    withRatio: element.heightRatio,
                    shouldResizeForCoverImage: shouldResizeForCoverImage
                )
            )
            .rotationEffect(.degrees(element.rotationDegrees))
            .rotation3DEffect(.degrees(180), axis: element.flip.axis)
            .offset(
                x: model.calculatingProportionalValue(
                    withRatio: element.horizontalOffsetRatio,
                    shouldResizeForCoverImage: shouldResizeForCoverImage
                ),
                y: model.calculatingProportionalValue(
                    withRatio: element.verticalOffsetRatio,
                    shouldResizeForCoverImage: shouldResizeForCoverImage
                )
            )
            .zIndex(element.zIndex)
    }
}

#Preview {
    VStack {
        SymbolArtDisplayView(element: AfroBoyArtView.Element.face.value)
        
        SymbolArtDisplayView(
            shouldResizeForCoverImage: false,
            element: AfroBoyArtView.Element.face.value
        )
    }
    .environment(ArtWorkModel.preview)
}
