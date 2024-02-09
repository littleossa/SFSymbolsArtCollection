//
//  PartyAnimalsPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct PartyAnimalsPreviewView: View {
    
    @Environment(ArtWorkModel.self) var model
    
    var body: some View {
        
        ZStack {
            bear()
            flog()
            lion()
            
            // MARK: - 􀾟 Paw
            ForEach(PartyAnimalsArtView.PawPosition.allCases) {
                
                Image(systemName: "pawprint.fill")
                    .arrangeShape(
                        primaryColor: $0.value.color,
                        width: model.calculatingProportionalValue(withRatio: 0.13, forPreview: true),
                        height: model.calculatingProportionalValue(withRatio: 0.13, forPreview: true),
                        rotationDegrees: $0.value.rotationDegrees,
                        horizontalOffset: model.calculatingProportionalValue(withRatio: $0.value.horizontalOffsetRatio, forPreview: true),
                        verticalOffset: model.calculatingProportionalValue(withRatio: $0.value.verticalOffsetRatio, forPreview: true)
                    )
            }
        }
    }
    
    // MARK: - Bear
    private func bear() -> some View {
        ZStack {
            // MARK: - 􀀁 Bear ear
            Image(systemName: "circle.fill")
                .arrangeShape(
                    primaryColor: .brown,
                    width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.08, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.37, forPreview: true)
                )
            
            Image(systemName: "circle.fill")
                .arrangeShape(
                    primaryColor: .brown,
                    width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.32, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.37, forPreview: true)
                )
            
            // MARK: - 􀩹 Bear Inside ear
            Image(systemName: "button.roundedtop.horizontal.fill")
                .arrangeShape(
                    primaryColor: .palePink,
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    rotationDegrees: -20,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.08, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.37, forPreview: true)
                )
            
            Image(systemName: "button.roundedtop.horizontal.fill")
                .arrangeShape(
                    primaryColor: .palePink,
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    rotationDegrees: 20,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.32, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.37, forPreview: true)
                )
            
            // MARK: - 􀲟 Bear outline
            Image(systemName: "oval.fill")
                .arrangeShape(
                    primaryColor: .brown,
                    width: model.calculatingProportionalValue(withRatio: 0.4, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.325, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.2, forPreview: true)
                )
            
            // MARK: - 􀢚 Bear Eye
            Image(systemName: "record.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    secondaryColor: .darkBrown,
                    width: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.13, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.23, forPreview: true)
                )
            
            Image(systemName: "record.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    secondaryColor: .darkBrown,
                    width: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.27, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.23, forPreview: true)
                )
            
            // MARK: - 􀁹 Bear mouth
            Image(systemName: "arrow.down.circle.fill")
                .arrangeShape(
                    primaryColor: .black,
                    secondaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.15, forPreview: true)
                )
            
            // MARK: - 􀆼 Bear Nose
            Image(systemName: "moon.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    secondaryColor: .red,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    rotationDegrees: 170,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.17, forPreview: true)
                )
        }
    }
    
    // MARK: - Flog
    private func flog() -> some View {
        ZStack {
            // MARK: - 􀀁 Flog eye outline
            Image(systemName: "circle.fill")
                .arrangeShape(
                    primaryColor: .green,
                    width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.32, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.18, forPreview: true)
                )
            
            Image(systemName: "circle.fill")
                .arrangeShape(
                    primaryColor: .green,
                    width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.08, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.18, forPreview: true)
                )
            
            // MARK: - 􀢚 Flog Eye
            Image(systemName: "record.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.32, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.18, forPreview: true)
                )
            
            Image(systemName: "record.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.08, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.18, forPreview: true)
                )
            
            // MARK: - 􀲟 Flog outline
            Image(systemName: "oval.fill")
                .arrangeShape(
                    primaryColor: .green,
                    width: model.calculatingProportionalValue(withRatio: 0.4, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.325, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.2, forPreview: true)
                )
            
            // MARK: - 􀆈 Flog mouth
            Image(systemName: "chevron.down")
                .arrangeShape(
                    fontWeight: .bold,
                    width: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.025, forPreview: true)
                )
        }
    }
    
    // MARK: - Lion
    private func lion() -> some View {
        ZStack {
            
            // MARK: - Lion mane
            Image(systemName: "seal.fill")
                .arrangeShape(
                    primaryColor: .orange,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.52, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.52, forPreview: true),
                    rotationDegrees: 20,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.26, forPreview: true)
                )
            
            Image(systemName: "seal.fill")
                .arrangeShape(
                    primaryColor: .orange,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.52, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.52, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.26, forPreview: true)
                )
            
            // MARK: - 􀀁 Lion ear
            Image(systemName: "circle.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    width: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.08, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.17, forPreview: true)
                )
            
            Image(systemName: "circle.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    width: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.12, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.32, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.17, forPreview: true)
                )
            
            // MARK: - 􀲟 Lion outline
            Image(systemName: "oval.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    width: model.calculatingProportionalValue(withRatio: 0.3, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.26, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.29, forPreview: true)
                )
            
            // MARK: - 􀢚 Lion Eye
            Image(systemName: "record.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    secondaryColor: .darkBrown,
                    width: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.13, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.26, forPreview: true)
                )
            
            Image(systemName: "record.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    secondaryColor: .darkBrown,
                    width: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.27, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.26, forPreview: true)
                )
            
            // MARK: - Lion whiskers
            Image(systemName: "rays")
                .arrangeShape(
                    primaryColor: .darkBrown,
                    width: model.calculatingProportionalValue(withRatio: 0.175, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.235, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.33, forPreview: true)
                )
            
            Image(systemName: "rays")
                .arrangeShape(
                    primaryColor: .darkBrown,
                    width: model.calculatingProportionalValue(withRatio: 0.175, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.165, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.33, forPreview: true)
                )
            
            // MARK: - 􀁹 Lion mouth
            Image(systemName: "arrow.down.circle.fill")
                .arrangeShape(
                    primaryColor: .black,
                    secondaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.125, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.11, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.34, forPreview: true)
                )
            
            // MARK: - 􀆼 Lion Nose
            Image(systemName: "moon.circle.fill")
                .arrangeShape(
                    primaryColor: .white,
                    secondaryColor: .darkBrown,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    rotationDegrees: 170,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.32, forPreview: true)
                )
        }
    }
}

#Preview {
    PartyAnimalsPreviewView()
        .environment(ArtWorkModel.init(screenSize: .init(width: 4600, height: 4600)))
}
