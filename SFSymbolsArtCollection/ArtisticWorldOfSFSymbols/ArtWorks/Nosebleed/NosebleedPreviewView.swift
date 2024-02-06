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
                .resizable()
                .foregroundStyle(.awesomeYellow)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.65, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.65, forPreview: true))
            
            // MARK: - 􀭧 Nosebleed bottom
            Image(systemName: "cellularbars")
                .resizable()
                .foregroundStyle(.red)
                .fontWeight(.ultraLight)
                .rotationEffect(.degrees(180))
                .frame(width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.5, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.09, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.074, forPreview: true))
            
            // MARK: - 􀏄 Concealing part for nosebleed bottom
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(.awesomeYellow)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.09, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true))
            
            // MARK: - 􀓩 Mouth
            Image(systemName: "lasso")
                .resizable()
                .foregroundStyle(.black)
                .fontWeight(.ultraLight)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.4, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.3, forPreview: true))
                .rotationEffect(.degrees(170))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true))
            
            // MARK: - 􀏄 Concealing part for Mouth
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(.awesomeYellow)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.5, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.3, forPreview: true))
                .rotationEffect(.degrees(176))
                .offset(y: model.calculatingProportionalValue(withRatio: -0.03, forPreview: true))
            
            // MARK: - 􀭧 Nosebleed top
            Image(systemName: "cellularbars")
                .resizable()
                .foregroundStyle(.red)
                .fontWeight(.ultraLight)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true))
                .rotationEffect(.degrees(180))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.033, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.096, forPreview: true))
            
            // MARK: - 􀏄 Nosebleed top right hide
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(.awesomeYellow)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.09, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true))
            
            // MARK: - 􀏄 Nosebleed top left hide
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(.awesomeYellow)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.053, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.09, forPreview: true))
            
            // MARK: - 􀀁 Right eye
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundStyle(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.117, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.176, forPreview: true))
            
            // MARK: - 􀀁 Left eye
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundStyle(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.113, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.17, forPreview: true))
            
            // MARK: - 􀥨 Tissue
            Image(systemName: "doc.plaintext.fill")
                .resizable()
                .foregroundStyle(.white)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.08, forPreview: true))
                .rotationEffect(.degrees(188))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.052, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.083, forPreview: true))
            
            // MARK: - 􀉆 Tissue frame
            Image(systemName: "doc.plaintext")
                .resizable()
                .foregroundStyle(.black)
                .fontWeight(.light)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.08, forPreview: true))
                .rotationEffect(.degrees(188))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.052, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.083, forPreview: true))
            
            // MARK: - 􀥰 Nose
            Image(systemName: "triangleshape")
                .resizable()
                .foregroundStyle(.black)
                .fontWeight(.light)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true))
                .rotationEffect(.degrees(-4))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.013, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.02, forPreview: true))
            
            // MARK: - 􀏄 Nose hide
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(.awesomeYellow)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.13, forPreview: true))
                .rotationEffect(.degrees(148))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.007, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.046, forPreview: true))
        }
    }
}

#Preview {
    NosebleedArtPreviewView()
        .environment(ArtWorkModel.preview)
}
