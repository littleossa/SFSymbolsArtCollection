//
//  AfroBoyPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct AfroBoyPreviewView: View {
    
    @Environment(ArtWorkModel.self) var model
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            
            // MARK: - 􁝰 Hair
            Image(systemName: "tree.fill")
                .resizable()
                .foregroundStyle(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.9, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.9, forPreview: true))
            
            // MARK: - 􀙧 Contour
            Image(systemName: "shield.fill")
                .resizable()
                .foregroundStyle(.paleOrange)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.5, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.6, forPreview: true))
                .offset(y: model.calculatingProportionalValue(withRatio: 0.17, forPreview: true))
            
            // MARK: - 􀎽 Face
            Image(systemName: "faceid")
                .resizable()
                .foregroundStyle(.black, .paleOrange)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.3, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.3, forPreview: true))
                .offset(y: model.calculatingProportionalValue(withRatio: 0.16, forPreview: true))
            
            // MARK: - 􀦉 Comb
            Image(systemName: "comb.fill")
                .resizable()
                .foregroundStyle(.red)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.2, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.2, forPreview: true))
        }
    }
}

#Preview {
    AfroBoyPreviewView()
        .environment(ArtWorkModel.preview)
}
