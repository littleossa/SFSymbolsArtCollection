//
//  SweetBeanBunManArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension SweetBeanBunManArtView {
    
    enum Element: String, CaseIterable, Identifiable {
        case sweetBeans
        case face
        case eyeConcealmentRight
        case eyeConcealmentLeft
        case mouthConcealmentRight
        case mouthConcealmentLeft
        case eyebrowRight
        case eyebrowLeft
        case eyebrowConcealmentRight
        case eyebrowConcealmentLeft
        case eyeRight
        case eyeLeft
        case mouth
        case mouthConcealment
        case centerNose
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .sweetBeans:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .darkBrown,
                    widthRatio: 0.7,
                    heightRatio: 0.7,
                    symbolCountToWaitFor: 0
                )
            case .face:
                SymbolArtElement(
                    symbol: "􁺱",
                    name: "ev.plug.ac.gb.t.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.second),
                    primaryColor: .orange,
                    secondaryColor: .paleOrange,
                    widthRatio: 0.8,
                    heightRatio: 0.7,
                    verticalOffsetRatio: 0.05,
                    symbolCountToWaitFor: 1
                )
            case .eyeConcealmentRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.1,
                    verticalOffsetRatio: -0.14,
                    symbolCountToWaitFor: 2
                )
            case .eyeConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.1,
                    verticalOffsetRatio: -0.14,
                    symbolCountToWaitFor: 2
                )
            case .mouthConcealmentRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.175,
                    heightRatio: 0.175,
                    horizontalOffsetRatio: 0.1,
                    verticalOffsetRatio: 0.19,
                    symbolCountToWaitFor: 2
                )
            case .mouthConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.175,
                    heightRatio: 0.175,
                    horizontalOffsetRatio: -0.11,
                    verticalOffsetRatio: 0.19,
                    symbolCountToWaitFor: 2
                )
            case .eyebrowRight:
                SymbolArtElement(
                    symbol: "􀙱",
                    name: "wave.3.left",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    widthRatio: 0.1,
                    heightRatio: 0.2,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: 0.12,
                    verticalOffsetRatio: -0.19,
                    symbolCountToWaitFor: 3
                )
                
            case .eyebrowLeft:
                SymbolArtElement(
                    symbol: "􀙱",
                    name: "wave.3.left",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    widthRatio: 0.1,
                    heightRatio: 0.2,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: -0.12,
                    verticalOffsetRatio: -0.19,
                    symbolCountToWaitFor: 3
                )
            case .eyebrowConcealmentRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.16,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: 0.12,
                    verticalOffsetRatio: -0.17,
                    symbolCountToWaitFor: 4
                )
            case .eyebrowConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.16,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: -0.12,
                    verticalOffsetRatio: -0.17,
                    symbolCountToWaitFor: 4
                )
            case .eyeRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .black,
                    widthRatio: 0.05,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: 0.12,
                    verticalOffsetRatio: -0.15,
                    symbolCountToWaitFor: 5
                )
            case .eyeLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .black,
                    widthRatio: 0.05,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: -0.12,
                    verticalOffsetRatio: -0.15,
                    symbolCountToWaitFor: 5
                )
            case .mouth:
                SymbolArtElement(
                    symbol: "􀼭",
                    name: "rainbow",
                    initialPosition: .third(.fourth),
                    primaryColor: .black,
                    widthRatio: 0.4,
                    heightRatio: 0.1,
                    rotationDegrees: 180,
                    verticalOffsetRatio: 0.2,
                    symbolCountToWaitFor: 6
                )
            case .mouthConcealment:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.3486,
                    heightRatio: 0.135,
                    horizontalOffsetRatio: 0.003,
                    verticalOffsetRatio: 0.17,
                    symbolCountToWaitFor: 7
                )
            case .centerNose:
                SymbolArtElement(
                    symbol: "􀜫",
                    name: "stop.circle.fill",
                    initialPrimaryColor: .white,
                    initialPosition: .third(.fifth),
                    primaryColor: .white,
                    secondaryColor: .red,
                    widthRatio: 0.2,
                    heightRatio: 0.2,
                    verticalOffsetRatio: 0.01,
                    symbolCountToWaitFor: 8
                )
            }
        }
    }
}

struct SweetBeanBunManArtView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            ForEach(Element.allCases) {
                AnimatableSymbolView(element: $0.value, isAnimating: isAnimating)
            }
        }
        .navigationTitle("Sweet bean bun man")
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
}

#Preview {
    NavigationStack {
        SweetBeanBunManArtView()
            .environment(ArtWorkModel.preview)
    }
}

extension SweetBeanBunManArtView {
    
    struct CoverArt: View {
        
        @Environment(ArtWorkModel.self) var model
        
        var body: some View {
            ZStack {
                ForEach(Element.allCases) {
                    SymbolArtDisplayView(element: $0.value)
                }
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundStyle(.black.opacity(0.9))
                    .frame(
                        width: model.calculatingProportionalValue(
                            withRatio: 0.7,
                            shouldResizeForCoverArt: true
                        ),
                        height: model.calculatingProportionalValue(
                            withRatio: 0.7,
                            shouldResizeForCoverArt: true
                        )
                    )
                
                Image(systemName: "ev.plug.ac.gb.t.fill")
                    .resizable()
                    .foregroundStyle(.black.opacity(0.9))
                    .frame(
                        width: model.calculatingProportionalValue(
                            withRatio: 0.8,
                            shouldResizeForCoverArt: true
                        ),
                        height: model.calculatingProportionalValue(
                            withRatio: 0.7,
                            shouldResizeForCoverArt: true
                        )
                    )
                    .offset(y: model.calculatingProportionalValue(
                        withRatio: 0.05,
                        shouldResizeForCoverArt: true
                    ))
                
                Image(systemName: "questionmark.app.fill")
                    .foregroundStyle(.white, .black.opacity(0.9))
                    .font(.system(size: model.calculatingProportionalValue(
                        withRatio: 0.4,
                        shouldResizeForCoverArt: true
                    )))
                    .bold()
            }
        }
    }
}

#Preview {
    SweetBeanBunManArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
