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
                .resizable()
                .foregroundStyle(.paleOrange)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.5, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.75, forPreview: true))
                .rotationEffect(.degrees(180))
                .offset(y: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true))
            
            // MARK: - 􀏄 Hat band
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(.red)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.446, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                    y: model.calculatingProportionalValue(withRatio: -0.15, forPreview: true))
            
            // MARK: - 􀈮 Hat
            Image(systemName: "archivebox.fill")
                .resizable()
                .foregroundStyle(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.525, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.525, forPreview: true))
                .rotationEffect(.degrees(180))
                .offset(y: model.calculatingProportionalValue(withRatio: -0.25, forPreview: true))
            
            // MARK: - 􀏄 Hat brim
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.625, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true))
                .offset(y: model.calculatingProportionalValue(withRatio: -0.05, forPreview: true))
            
            // MARK: - 􀆐 Eyebrow
            Image(systemName: "chevron.compact.up")
                .resizable()
                .foregroundStyle(.black)
                .fontWeight(.thin)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true))
            
            Image(systemName: "chevron.compact.up")
                .resizable()
                .foregroundStyle(.black)
                .fontWeight(.thin)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.1, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true))
            
            // MARK: - 􀅽 Sunglasses frame
            Image(systemName: "minus")
                .resizable()
                .foregroundStyle(.black)
                .fontWeight(.thin)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.0125, forPreview: true))
                .offset(y: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true))
            
            Image(systemName: "minus")
                .resizable()
                .foregroundStyle(.black)
                .fontWeight(.thin)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.0125, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true))
            
            Image(systemName: "minus")
                .resizable()
                .foregroundStyle(.black)
                .fontWeight(.thin)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.0125, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.2, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true))
            
            // MARK: - 􀀁 Sunglasses inside lens
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundStyle(.white)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true))
            
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundStyle(.white)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.1, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true))
            
            // MARK: - 􀆼 Sunglasses outside lens
            Image(systemName: "moon.circle.fill")
                .resizable()
                .foregroundStyle(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true))
            
            Image(systemName: "moon.circle.fill")
                .resizable()
                .foregroundStyle(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.1, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true))
            
            Image(systemName: "moon.circle.fill")
                .resizable()
                .foregroundStyle(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.1, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true))
            
            // MARK: - 􀇈 Nose
            Image(systemName: "cloud.heavyrain")
                .resizable()
                .foregroundStyle(.black)
                .fontWeight(.light)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.27, forPreview: true))
            
            // MARK: - 􀩻 Inside mouth
            Image(systemName: "button.roundedbottom.horizontal.fill")
                .resizable()
                .foregroundStyle(.red)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.075, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.4, forPreview: true))
            
            // MARK: - 􀝷 Tongue capsule.fill
            Image(systemName: "capsule.fill")
                .resizable()
                .foregroundStyle(.orange)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.145, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.025, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: 0.424, forPreview: true))
        }
    }
}

#Preview {
    MagicianPreviewView()
        .environment(ArtWorkModel.preview)
}
