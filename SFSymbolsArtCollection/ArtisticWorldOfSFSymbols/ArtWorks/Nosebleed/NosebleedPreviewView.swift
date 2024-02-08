//
//  NosebleedPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct NosebleedArtPreviewView: View {
    
    @Environment(ArtWorkModel.self) var model
    
    var body: some View {
        
        ZStack {
            
            // MARK: - 􀀁 Contour
            Image(systemName: "circle.fill")
                .arrangeShape(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.65, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.65, forPreview: true)
                )
            
            // MARK: - 􀭧 Nosebleed bottom
            Image(systemName: "cellularbars")
                .arrangeShape(
                    primaryColor: .red,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.5, forPreview: true),
                    rotationDegrees: 180,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.09, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.0741, forPreview: true)
                )
            
            // MARK: - 􀏄 Concealing part for nosebleed bottom
            Image(systemName: "rectangle.fill")
                .arrangeShape(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.09, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true)
                )
            
            // MARK: - 􀓩 Mouth
            Image(systemName: "lasso")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.4, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.3, forPreview: true),
                    rotationDegrees: 170,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true)
                )
            
            // MARK: - 􀏄 Concealing part for Mouth
            Image(systemName: "rectangle.fill")
                .arrangeShape(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.5, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.3, forPreview: true),
                    rotationDegrees: 176,
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.03, forPreview: true)
                )
            
            // MARK: - 􀭧 Nosebleed top
            Image(systemName: "cellularbars")
                .arrangeShape(
                    primaryColor: .red,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true),
                    rotationDegrees: 180,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.033, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.096, forPreview: true)
                )
            
            // MARK: - 􀏄 Nosebleed top right hide
            Image(systemName: "rectangle.fill")
                .arrangeShape(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.09, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true)
                )
            
            // MARK: - 􀏄 Nosebleed top left hide
            Image(systemName: "rectangle.fill")
                .arrangeShape(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.053, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.09, forPreview: true)
                )
            
            // MARK: - 􀀁 Right eye
            Image(systemName: "circle.fill")
                .arrangeShape(
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.117, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.176, forPreview: true)
                )
            
            // MARK: - 􀀁 Left eye
            Image(systemName: "circle.fill")
                .arrangeShape(
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.113, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.17, forPreview: true)
                )
            
            // MARK: - 􀥨 Tissue
            Image(systemName: "doc.plaintext.fill")
                .arrangeShape(
                    primaryColor: .white,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.08, forPreview: true),
                    rotationDegrees: 188,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.052, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.083, forPreview: true)
                )
            
            // MARK: - 􀉆 Tissue frame
            Image(systemName: "doc.plaintext")
                .arrangeShape(
                    fontWeight: .light,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.08, forPreview: true),
                    rotationDegrees: 188,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.052, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.083, forPreview: true)
                )
            
            // MARK: - 􀥰 Nose
            Image(systemName: "triangleshape")
                .arrangeShape(
                    fontWeight: .light,
                    width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true),
                    rotationDegrees: -4,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.013, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.02, forPreview: true)
                )
            
            // MARK: - 􀏄 Nose hide
            Image(systemName: "rectangle.fill")
                .arrangeShape(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.13, forPreview: true),
                    rotationDegrees: 148,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.007, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.046, forPreview: true)
                )
        }
    }
}

#Preview {
    NosebleedArtPreviewView()
        .environment(ArtWorkModel.preview)
}
