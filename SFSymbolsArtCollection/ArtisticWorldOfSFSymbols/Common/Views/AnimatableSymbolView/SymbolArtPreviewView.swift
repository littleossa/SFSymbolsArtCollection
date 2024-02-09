//
//  SymbolArtPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct SymbolArtPreviewView: View {
    
    @Environment(ArtWorkModel.self) var model
    let forPreview: Bool
    let element: SymbolArtElement
    
    init(forPreview: Bool = true, element: SymbolArtElement) {
        self.forPreview = forPreview
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
                    forPreview: forPreview
                ),
                height: model.calculatingProportionalValue(
                    withRatio: element.heightRatio,
                    forPreview: forPreview
                )
            )
            .rotationEffect(.degrees(element.rotationDegrees))
            .rotation3DEffect(.degrees(180), axis: element.flip.axis)
            .offset(
                x: model.calculatingProportionalValue(
                    withRatio: element.horizontalOffsetRatio,
                    forPreview: forPreview
                ),
                y: model.calculatingProportionalValue(
                    withRatio: element.verticalOffsetRatio,
                    forPreview: forPreview
                )
            )
            .zIndex(element.zIndex)
    }
}

#Preview {
    VStack {
        SymbolArtPreviewView(element: AfroBoyArtView.Element.face.value)
        
        SymbolArtPreviewView(
            forPreview: false,
            element: AfroBoyArtView.Element.face.value
        )
    }
    .environment(ArtWorkModel.preview)
}
