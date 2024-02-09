//
//  PartyAnimalsArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

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
                    symbolCountToWaitFor: 2
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
                symbolCountToWaitFor: 1
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
                symbolCountToWaitFor: 1
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
                symbolCountToWaitFor: 0
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
                symbolCountToWaitFor: 0
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
                symbolCountToWaitFor: 8
            )
            
            // MARK: - 􀢚 Bear Eye
            AnimatableSymbolView(
                name: "record.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .third(.sixth),
                primaryColor: .white,
                secondaryColor: .darkBrown,
                widthRatio: 0.05,
                heightRatio: 0.05,
                horizontalOffsetRatio: 0.13,
                verticalOffsetRatio: -0.23,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            AnimatableSymbolView(
                name: "record.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .third(.sixth),
                primaryColor: .white,
                secondaryColor: .darkBrown,
                widthRatio: 0.05,
                heightRatio: 0.05,
                horizontalOffsetRatio: 0.27,
                verticalOffsetRatio: -0.23,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            // MARK: - 􀁹 Bear mouth
            AnimatableSymbolView(
                name: "arrow.down.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .second(.third),
                primaryColor: .black,
                secondaryColor: .white,
                widthRatio: 0.125,
                heightRatio: 0.125,
                horizontalOffsetRatio: 0.2,
                verticalOffsetRatio: -0.15,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            // MARK: - 􀆼 Bear Nose
            AnimatableSymbolView(
                name: "moon.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .third(.seventh),
                primaryColor: .white,
                secondaryColor: .red,
                widthRatio: 0.04,
                heightRatio: 0.04,
                rotationDegrees: 170,
                horizontalOffsetRatio: 0.2,
                verticalOffsetRatio: -0.17,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
        }
    }
    
    // MARK: - Flog
    private func flog() -> some View {
        ZStack {
            // MARK: - 􀀁 Flog eye outline
            AnimatableSymbolView(
                name: "circle.fill",
                initialPosition: .third(.third),
                primaryColor: .green,
                widthRatio: 0.15,
                heightRatio: 0.15,
                horizontalOffsetRatio: -0.32,
                verticalOffsetRatio: -0.18,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 1
            )
            
            AnimatableSymbolView(
                name: "circle.fill",
                initialPosition: .third(.third),
                primaryColor: .green,
                widthRatio: 0.15,
                heightRatio: 0.15,
                horizontalOffsetRatio: -0.08,
                verticalOffsetRatio: -0.18,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 1
            )
            
            // MARK: - 􀢚 Flog Eye
            AnimatableSymbolView(
                name: "record.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .third(.sixth),
                primaryColor: .white,
                widthRatio: 0.05,
                heightRatio: 0.05,
                horizontalOffsetRatio: -0.32,
                verticalOffsetRatio: -0.18,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            AnimatableSymbolView(
                name: "record.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .third(.sixth),
                primaryColor: .white,
                widthRatio: 0.05,
                heightRatio: 0.05,
                horizontalOffsetRatio: -0.08,
                verticalOffsetRatio: -0.18,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            // MARK: - 􀲟 Flog outline
            AnimatableSymbolView(
                name: "oval.fill",
                initialPosition: .third(.fifth),
                primaryColor: .green,
                widthRatio: 0.4,
                heightRatio: 0.325,
                horizontalOffsetRatio: -0.2,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 8
            )
            
            // MARK: - 􀆈 Flog mouth
            AnimatableSymbolView(
                name: "chevron.down",
                initialPosition: .second(.first),
                fontWeight: .bold,
                widthRatio: 0.1,
                heightRatio: 0.05,
                horizontalOffsetRatio: -0.2,
                verticalOffsetRatio: 0.025,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 3
            )
        }
    }
    
    // MARK: - Lion
    private func lion() -> some View {
        ZStack {
            
            // MARK: - Lion mane
            AnimatableSymbolView(
                name: "seal.fill",
                initialPosition: .third(.second),
                primaryColor: .orange,
                fontWeight: .ultraLight,
                widthRatio: 0.52,
                heightRatio: 0.52,
                rotationDegrees: 20,
                horizontalOffsetRatio: 0.2,
                verticalOffsetRatio: 0.26,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 9
            )
            
            AnimatableSymbolView(
                name: "seal.fill",
                initialPosition: .third(.second),
                primaryColor: .orange,
                fontWeight: .ultraLight,
                widthRatio: 0.52,
                heightRatio: 0.52,
                horizontalOffsetRatio: 0.2,
                verticalOffsetRatio: 0.26,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 9
            )
            
            // MARK: - 􀀁 Lion ear
            AnimatableSymbolView(
                name: "circle.fill",
                initialPosition: .third(.third),
                primaryColor: .yellow,
                widthRatio: 0.12,
                heightRatio: 0.12,
                horizontalOffsetRatio: 0.08,
                verticalOffsetRatio: 0.17,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 1
            )
            
            AnimatableSymbolView(
                name: "circle.fill",
                initialPosition: .third(.third),
                primaryColor: .yellow,
                widthRatio: 0.12,
                heightRatio: 0.12,
                horizontalOffsetRatio: 0.32,
                verticalOffsetRatio: 0.17,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 1
            )
            
            // MARK: - 􀲟 Lion outline
            AnimatableSymbolView(
                name: "oval.fill",
                initialPosition: .third(.fifth),
                primaryColor: .yellow,
                widthRatio: 0.3,
                heightRatio: 0.26,
                horizontalOffsetRatio: 0.2,
                verticalOffsetRatio: 0.29,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 8
            )
            
            // MARK: - 􀢚 Lion Eye
            AnimatableSymbolView(
                name: "record.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .third(.sixth),
                primaryColor: .white,
                secondaryColor: .darkBrown,
                widthRatio: 0.05,
                heightRatio: 0.05,
                horizontalOffsetRatio: 0.13,
                verticalOffsetRatio: 0.26,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            AnimatableSymbolView(
                name: "record.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .third(.sixth),
                primaryColor: .white,
                secondaryColor: .darkBrown,
                widthRatio: 0.05,
                heightRatio: 0.05,
                horizontalOffsetRatio: 0.27,
                verticalOffsetRatio: 0.26,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            // MARK: - Lion whiskers
            AnimatableSymbolView(
                name: "rays",
                initialPosition: .second(.second),
                primaryColor: .darkBrown,
                widthRatio: 0.175,
                heightRatio: 0.06,
                horizontalOffsetRatio: 0.235,
                verticalOffsetRatio: 0.33,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 4
            )
            
            AnimatableSymbolView(
                name: "rays",
                initialPosition: .second(.second),
                primaryColor: .darkBrown,
                widthRatio: 0.175,
                heightRatio: 0.06,
                horizontalOffsetRatio: 0.165,
                verticalOffsetRatio: 0.33,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 4
            )
            
            // MARK: - 􀁹 Lion mouth
            AnimatableSymbolView(
                name: "arrow.down.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .second(.third),
                primaryColor: .black,
                secondaryColor: .white,
                widthRatio: 0.125,
                heightRatio: 0.11,
                horizontalOffsetRatio: 0.2,
                verticalOffsetRatio: 0.34,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            // MARK: - 􀆼 Lion Nose
            AnimatableSymbolView(
                name: "moon.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .third(.seventh),
                primaryColor: .white,
                secondaryColor: .darkBrown,
                widthRatio: 0.04,
                heightRatio: 0.04,
                rotationDegrees: 170,
                horizontalOffsetRatio: 0.2,
                verticalOffsetRatio: 0.32,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
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
