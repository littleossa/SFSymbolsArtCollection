//
//  MagicianPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct MagicianPreviewView: View {
    
    @Environment(ArtWorkModel.self) var model
    
    var body: some View {
        ZStack {
            
            // MARK: - 􀠒 Outline
            Image(systemName: "drop.fill")
                .arrangeShape(
                    primaryColor: .paleOrange,
                    width: model.calculatingProportionalValue(withRatio: 0.5, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.75, forPreview: true),
                    rotationDegrees: 180,
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true)
                )
            
            // MARK: - 􀏄 Hat band
            Image(systemName: "rectangle.fill")
                .arrangeShape(
                    primaryColor: .red,
                    width: model.calculatingProportionalValue(withRatio: 0.446, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.15, forPreview: true)
                )
            
            // MARK: - 􀈮 Hat
            Image(systemName: "archivebox.fill")
                .arrangeShape(
                    width: model.calculatingProportionalValue(withRatio: 0.525, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.525, forPreview: true),
                    rotationDegrees: 180,
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.25, forPreview: true)
                )
            
            // MARK: - 􀏄 Hat brim
            Image(systemName: "rectangle.fill")
                .arrangeShape(
                    width: model.calculatingProportionalValue(withRatio: 0.625, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.05, forPreview: true)
                )
            
            // MARK: - 􀆐 Eyebrow
            Image(systemName: "chevron.compact.up")
                .arrangeShape(
                    fontWeight: .thin,
                    width: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true)
                )
            
            Image(systemName: "chevron.compact.up")
                .arrangeShape(
                    fontWeight: .thin,
                    width: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.1, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true)
                )
            
            // MARK: - 􀅽 Sunglasses frame
            Image(systemName: "minus")
                .arrangeShape(
                    fontWeight: .thin,
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.0125, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true)
                )
            
            Image(systemName: "minus")
                .arrangeShape(
                    fontWeight: .thin,
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.0125, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true)
                )
            
            Image(systemName: "minus")
                .arrangeShape(
                    fontWeight: .thin,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.0125, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true)
                )
            
            // MARK: - 􀆼 Sunglasses lens
            Image(systemName: "moon.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true)
                )
            
            Image(systemName: "moon.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.1, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true)
                )
            
            // MARK: - 􀇈 Nose
            Image(systemName: "cloud.heavyrain")
                .arrangeShape(
                    fontWeight: .light,
                    width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.27, forPreview: true)
                )
            
            // MARK: - 􀩻 Inside mouth
            Image(systemName: "button.roundedbottom.horizontal.fill")
                .arrangeShape(
                    primaryColor: .red,
                    width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.075, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.4, forPreview: true)
                )
            
            // MARK: - 􀝷 Tongue capsule.fill
            Image(systemName: "capsule.fill")
                .arrangeShape(
                    primaryColor: .orange,
                    width: model.calculatingProportionalValue(withRatio: 0.145, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.025, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.424, forPreview: true)
                )
        }
    }
}

#Preview {
    MagicianPreviewView()
        .environment(ArtWorkModel.preview)
}
