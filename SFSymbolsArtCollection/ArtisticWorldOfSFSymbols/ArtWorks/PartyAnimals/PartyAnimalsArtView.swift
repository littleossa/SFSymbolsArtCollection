//
//  PartyAnimalsArtView.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2024/02/09.
//

import SwiftUI

extension PartyAnimalsArtView {
    
    enum PawPosition: String, CaseIterable, Identifiable {
        case first
        case second
        case third
        case fourth
        
        struct Value {
            let color: Color
            let rotationDegrees: CGFloat
            let horizontalOffsetRatio: CGFloat
            let verticalOffsetRatio: CGFloat
        }
        
        var id: String { self.rawValue }
        
        var value: Value {
            switch self {
            case .first:
                Value(color: .red,
                      rotationDegrees: 24,
                      horizontalOffsetRatio: -0.34,
                      verticalOffsetRatio: -0.5)
            case .second:
                Value(color: .orange,
                      rotationDegrees: -24,
                      horizontalOffsetRatio: -0.14,
                      verticalOffsetRatio: -0.36)
            case .third:
                Value(color: .teal,
                      rotationDegrees: 30,
                      horizontalOffsetRatio: -0.3,
                      verticalOffsetRatio: 0.26)
            case .fourth:
                Value(color: .blue,
                      rotationDegrees: -14,
                      horizontalOffsetRatio: -0.14,
                      verticalOffsetRatio: 0.44)
            }
        }
    }
}

struct PartyAnimalsArtView: View {
    
    @Environment(ArtWorkModel.self) var model
    @State private var isAnimating = false
    
    var body: some View {
        
        ZStack {
            bear()
            flog()
            lion()
            
            // MARK: - 􀾟 Paw
            ForEach(PawPosition.allCases) {
                
                AnimatableSymbolView(
                    name: "pawprint.fill",
                    initialPosition: .third(.first),
                    primaryColor: $0.value.color,
                    widthRatio: 0.13,
                    heightRatio: 0.13,
                    rotationDegrees: $0.value.rotationDegrees,
                    horizontalOffsetRatio: $0.value.horizontalOffsetRatio,
                    verticalOffsetRatio: $0.value.verticalOffsetRatio,
                    isAnimating: isAnimating,
                    symbolCountToWaitFor: 3
                )
            }
        }
        .navigationTitle("Party animals")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            ToolbarItemGroup(placement: .bottomBar) {
                Spacer()
                
                PlayButton {
                    isAnimating = true
                }
                .font(.system(size: 32))
                .disabled(isAnimating)
            }
        })
    }
    
    // MARK: - Bear
    private func bear() -> some View {
        ZStack {
            // MARK: - 􀀁 Bear ear
            AnimatableSymbolView(
                name: "circle.fill",
                initialPosition: .third(.third),
                primaryColor: .brown,
                widthRatio: 0.15,
                heightRatio: 0.15,
                horizontalOffsetRatio: 0.08,
                verticalOffsetRatio: -0.37,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 3
            )
            
            AnimatableSymbolView(
                name: "circle.fill",
                initialPosition: .third(.third),
                primaryColor: .brown,
                widthRatio: 0.15,
                heightRatio: 0.15,
                horizontalOffsetRatio: 0.32,
                verticalOffsetRatio: -0.37,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 3
            )
            
            // MARK: - 􀩹 Bear Inside ear
            AnimatableSymbolView(
                name: "button.roundedtop.horizontal.fill",
                initialPosition: .third(.fourth),
                primaryColor: .palePink,
                widthRatio: 0.06,
                heightRatio: 0.06,
                rotationDegrees: -20,
                horizontalOffsetRatio: 0.08,
                verticalOffsetRatio: -0.37,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 4
            )
            
            AnimatableSymbolView(
                name: "button.roundedtop.horizontal.fill",
                initialPosition: .third(.fourth),
                primaryColor: .palePink,
                widthRatio: 0.06,
                heightRatio: 0.06,
                rotationDegrees: 20,
                horizontalOffsetRatio: 0.32,
                verticalOffsetRatio: -0.37,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 4
            )
            
            // MARK: - 􀲟 Bear outline
            AnimatableSymbolView(
                name: "oval.fill",
                initialPosition: .third(.fifth),
                primaryColor: .brown,
                widthRatio: 0.4,
                heightRatio: 0.325,
                horizontalOffsetRatio: 0.2,
                verticalOffsetRatio: -0.2,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            // MARK: - 􀢚 Bear Eye
            AnimatableSymbolView(
                name: "record.circle.fill",
                initialPosition: .third(.sixth),
                primaryColor: .white,
                secondaryColor: .darkBrown,
                widthRatio: 0.05,
                heightRatio: 0.05,
                horizontalOffsetRatio: 0.13,
                verticalOffsetRatio: -0.23,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            AnimatableSymbolView(
                name: "record.circle.fill",
                initialPosition: .third(.sixth),
                primaryColor: .white,
                secondaryColor: .darkBrown,
                widthRatio: 0.05,
                heightRatio: 0.05,
                horizontalOffsetRatio: 0.27,
                verticalOffsetRatio: -0.23,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            // MARK: - 􀁹 Bear mouth
            AnimatableSymbolView(
                name: "arrow.down.circle.fill",
                initialPosition: .third(.sixth),
                primaryColor: .black,
                secondaryColor: .white,
                widthRatio: 0.125,
                heightRatio: 0.125,
                horizontalOffsetRatio: 0.2,
                verticalOffsetRatio: -0.15,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            // MARK: - 􀆼 Bear Nose
            AnimatableSymbolView(
                name: "moon.circle.fill",
                initialPosition: .third(.seventh),
                primaryColor: .white,
                secondaryColor: .red,
                widthRatio: 0.04,
                heightRatio: 0.04,
                rotationDegrees: 170,
                horizontalOffsetRatio: 0.2,
                verticalOffsetRatio: -0.17,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 8
            )
        }
    }
    
    // MARK: - Flog
    private func flog() -> some View {
        ZStack {
            // MARK: - 􀀁 Flog eye
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
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0, forPreview: true)
                )
            
            // MARK: - 􀆈 Flog outline
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
            
            // MARK: - 􀀁 Bear ear
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
    NavigationStack {
        PartyAnimalsArtView()
            .environment(ArtWorkModel.preview)
    }
}
