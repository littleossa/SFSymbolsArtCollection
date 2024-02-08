//
//  CrayonBoyPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct CrayonBoyPreviewView: View {
    
    @Environment(ArtWorkModel.self) var model
    
    var body: some View {
        
        ZStack {
            // MARK: - 􀇃 Outline
            Image(systemName: "cloud.fill")
                .arrangeShape(
                    primaryColor: .paleOrange,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.75, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.5, forPreview: true),
                    rotationDegrees: 8,
                    flip: .horizontal
                )
            
            // MARK: - 􀀁 Hair top
            Image(systemName: "circle.fill")
                .arrangeShape(
                    width: model.calculatingProportionalValue(withRatio: 0.44, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.25, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.125, forPreview: true)
                )
            
            // MARK: - 􀏄 Concealing part for hair
            Image(systemName: "rectangle.fill")
                .arrangeShape(
                    primaryColor: .paleOrange,
                    width: model.calculatingProportionalValue(withRatio: 0.4, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.25, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.033, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.05, forPreview: true)
                )
            
            // MARK: - 􀆍 Eyebrow
            Image(systemName: "control")
                .arrangeShape(
                    fontWeight: .black,
                    width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    rotationDegrees: 6,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.07, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.14, forPreview: true)
                )
            
            Image(systemName: "control")
                .arrangeShape(
                    fontWeight: .black,
                    width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    rotationDegrees: 6,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.12, forPreview: true)
                )
            
            // MARK: - 􀀀 Eyelid
            Image(systemName: "circle")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.17, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.16, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.01, forPreview: true)
                )
            
            Image(systemName: "circle")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.17, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.16, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.08, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.01, forPreview: true)
                )
            
            // MARK: - 􀏄 Concealing part for Eyelid
            Image(systemName: "rectangle.fill")
                .arrangeShape(
                    primaryColor: .paleOrange,
                    width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.16, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.13, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true)
                )
            
            Image(systemName: "rectangle.fill")
                .arrangeShape(
                    primaryColor: .paleOrange,
                    width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.16, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.08, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true)
                )
            
            // MARK: - 􀢚 Eye
            Image(systemName: "record.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    secondaryColor: .black,
                    width: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true)
                )
            
            Image(systemName: "record.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    secondaryColor: .black,
                    width: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.06, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.016, forPreview: true)
                )
            
            // MARK: - 􀇂 Outline frame
            Image(systemName: "cloud")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.75, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.5, forPreview: true),
                    rotationDegrees: 8,
                    flip: .horizontal
                )
            
            // MARK: - 􀧷 Mouth
            Image(systemName: "capsule.portrait.fill")
                .arrangeShape(
                    primaryColor: .red,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.10, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    rotationDegrees: 16,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.09, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.225, forPreview: true)
                )
            
            // MARK: - 􀧶 Mouth frame
            Image(systemName: "capsule.portrait")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.10, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    rotationDegrees: 16,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.09, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.225, forPreview: true)
                )
            
            // MARK: - 􁹬 Sideburns
            Image(systemName: "righttriangle.fill")
                .arrangeShape(
                    width: model.calculatingProportionalValue(withRatio: 0.064, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    rotationDegrees: 170,
                    flip: .horizontal,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.215, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.07, forPreview: true)
                )
        }
    }
}

#Preview {
    CrayonBoyPreviewView()
        .environment(ArtWorkModel.preview)
}
