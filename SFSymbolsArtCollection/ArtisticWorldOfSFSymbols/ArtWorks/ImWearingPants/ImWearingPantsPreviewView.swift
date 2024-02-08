//
//  ImWearingPantsPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct ImWearingPantsPreviewView: View {
    
    @Environment(ArtWorkModel.self) var model
    
    var body: some View {
        
        ZStack {
            
            // MARK: - 􀑪 Music
            Image(systemName: "music.note")
                .resizable()
                .foregroundStyle(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.35, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.5, forPreview: true))
            
            // MARK: - 􀫀 Music 3
            Image(systemName: "music.quarternote.3")
                .resizable()
                .foregroundStyle(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.34, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.38, forPreview: true))
            
            // MARK: - 􁗅 Pose
            Image(systemName: "figure.arms.open")
                .resizable()
                .foregroundStyle(.yellow)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.6, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 1, forPreview: true))
            
            // MARK: - 􀆹 Chest shadow
            Image(systemName: "moon")
                .arrangeShape(
                    primaryColor: .black.opacity(0.6),
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.015, forPreview: true),
                    rotationDegrees: -10,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.09, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.125, forPreview: true)
                )
            
            Image(systemName: "moon")
                .arrangeShape(
                    primaryColor: .black.opacity(0.6),
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.015, forPreview: true),
                    rotationDegrees: -10,
                    flip: .horizontal,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.085, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.125, forPreview: true)
                )
            
            // MARK: - 􀏄 Parts for shaping
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(Color.systemBackground)
                .fontWeight(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.3, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.4, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.25, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.1, forPreview: true))
            
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(Color.systemBackground)
                .fontWeight(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.3, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.4, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.25, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.1, forPreview: true))
            
            // MARK: - 􀊡 Neck
            Image(systemName: "speaker.fill")
                .resizable()
                .foregroundStyle(.yellow)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.38, forPreview: true))
                .rotationEffect(.degrees(90))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.005, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.27, forPreview: true))
            
            // MARK: - 􀂓 Parts for shaping
            Image(systemName: "square.fill")
                .resizable()
                .foregroundStyle(Color.systemBackground)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.385, forPreview: true))
            
            Image(systemName: "square.fill")
                .resizable()
                .foregroundStyle(Color.systemBackground)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                       height: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.14, forPreview: true),
                        y: model.calculatingProportionalValue(withRatio: -0.385, forPreview: true))
            
            // MARK: - 􀆺 Chest
            Image(systemName: "moon.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    rotationDegrees: -10,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.09, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.138, forPreview: true)
                )
                
            Image(systemName: "moon.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    rotationDegrees: -10,
                    flip: .horizontal,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.085, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.138, forPreview: true)
                )
            
            // MARK: - 􀆉 Left arm
            Image(systemName: "chevron.left")
                .arrangeShape(
                    primaryColor: .yellow,
                    fontWeight: .black,
                    width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.3, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.08, forPreview: true)
                )
            
            // MARK: - 􀆊 Right artm
            Image(systemName: "chevron.right")
                .arrangeShape(
                    primaryColor: .yellow,
                    fontWeight: .black,
                    width: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.3, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.08, forPreview: true)
                )
            
            // MARK: - 􁉨 Pants
            Image(systemName: "parkingsign.steeringwheel")
                .arrangeShape(
                    primaryColor: .palePink,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.35, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.2, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.07, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true)
                )
            
            // MARK: - 􀀁 Pant center hole cover
            Image(systemName: "circle.fill")
                .arrangeShape(
                    primaryColor: .palePink,
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.01, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true)
                )
            
            // MARK: - 􁁌 Patterns on pants
            Image(systemName: "fan.fill")
                .arrangeShape(
                    primaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.01, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true)
                )
            
            Image(systemName: "fan.fill")
                .arrangeShape(
                    primaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.08, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true)
                )
            
            Image(systemName: "fan.fill")
                .arrangeShape(
                    primaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.08, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true)
                )
            
            Image(systemName: "fan.fill")
                .arrangeShape(
                    primaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: 0.099, forPreview: true)
                )
            
            // MARK: - 􀲟 Concealing part for pants
            Image(systemName: "oval.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    width: model.calculatingProportionalValue(withRatio: 0.11, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true),
                    rotationDegrees: 45,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.07, forPreview: true),
                    verticalOffset:  model.calculatingProportionalValue(withRatio: 0.09, forPreview: true)
                )
            
            Image(systemName: "oval.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    width: model.calculatingProportionalValue(withRatio: 0.11, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true),
                    rotationDegrees: -47,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    verticalOffset:  model.calculatingProportionalValue(withRatio: 0.089, forPreview: true)
                )
            
            // MARK: - 􁎘 Abdomen
            Image(systemName: "visionpro.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.25, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                    rotationDegrees: 180,
                    verticalOffset:  model.calculatingProportionalValue(withRatio: -0.045, forPreview: true)
                )
            
            // MARK: - 􀥤 Belly button
            Image(systemName: "poweron")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.002, forPreview: true),
                    rotationDegrees: 180
                )
            
            // MARK: - 􀕩 Niple
            Image(systemName: "smallcircle.filled.circle.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    secondaryColor: .brown,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                    rotationDegrees: 15,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.09, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.138, forPreview: true)
                )
            
            Image(systemName: "smallcircle.filled.circle.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    secondaryColor: .brown,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.01, forPreview: true),
                    rotationDegrees: -15,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.09, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.14, forPreview: true)
                )
            
            // MARK: - 􀧷 Contour
            Image(systemName: "capsule.portrait.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.16, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.22, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.4, forPreview: true)
                )
            
            Image(systemName: "capsule.portrait.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    width: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.16, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.35, forPreview: true)
                )
            
            // MARK: - 􀨯 Nose
            Image(systemName: "nose")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.045, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.38, forPreview: true)
                )
            
            // MARK: - 􀦭 Eyebrow
            Image(systemName: "eyebrow")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    rotationDegrees: 10,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.41, forPreview: true)
                )
                
            Image(systemName: "eyebrow")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.045, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    flip: .horizontal,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.03, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.408, forPreview: true)
                )
            
            // MARK: - 􀧷 Concealing part for eyebrow
            Image(systemName: "capsule.portrait.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    width: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    rotationDegrees: -10,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.035, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.396, forPreview: true)
                )
            
            Image(systemName: "capsule.portrait.fill")
                .arrangeShape(
                    primaryColor: .yellow,
                    width: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    rotationDegrees: 10,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.035, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.396, forPreview: true)
                )
            
            // MARK: - 􀋭 Eye frame
            Image(systemName: "eye")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.4, forPreview: true)
                )
                        
            Image(systemName: "eye")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.03, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.4, forPreview: true)
                )
            
            // MARK: - 􀋮 Eye
            Image(systemName: "eye.fill")
                .arrangeShape(
                    primaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.03, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.4, forPreview: true)
                )
            
            Image(systemName: "eye.fill")
                .arrangeShape(
                    primaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.03, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.4, forPreview: true)
                )
            
            // MARK: - 􀦪 Mouth
            Image(systemName: "mouth.fill")
                .arrangeShape(
                    primaryColor: .red,
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.32, forPreview: true)
                )
            
            Image(systemName: "mouth.fill")
                .arrangeShape(
                    primaryColor: .red,
                    width: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.02, forPreview: true),
                    verticalOffset: model.calculatingProportionalValue(withRatio: -0.33, forPreview: true)
                )
            
            // MARK: - 􁒀 Teeth
            Image(systemName: "window.casement.closed")
                .arrangeShape(
                    primaryColor: .black,
                    secondaryColor: .white,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.015, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.029, forPreview: true),
                    rotationDegrees: 90,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.013, forPreview: true),
                    verticalOffset:  model.calculatingProportionalValue(withRatio: -0.328, forPreview: true)
                )
            
            Image(systemName: "window.casement.closed")
                .arrangeShape(
                    primaryColor: .black,
                    secondaryColor: .white,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.015, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.029, forPreview: true),
                    rotationDegrees: 90,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.014, forPreview: true),
                    verticalOffset:  model.calculatingProportionalValue(withRatio: -0.328, forPreview: true)
                )
            
            // MARK: - 􀲟 Hair
            Image(systemName: "oval.fill")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.14, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.057, forPreview: true),
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.001, forPreview: true),
                    verticalOffset:  model.calculatingProportionalValue(withRatio: -0.49, forPreview: true)
                )
            
            // MARK: - 􀠒 Off-center part hair style
            Image(systemName: "drop.fill")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.06, forPreview: true),
                    rotationDegrees: -65,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: 0.04, forPreview: true),
                    verticalOffset:  model.calculatingProportionalValue(withRatio: -0.48, forPreview: true)
                )
            
            Image(systemName: "drop.fill")
                .arrangeShape(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.05, forPreview: true),
                    height: model.calculatingProportionalValue(withRatio: 0.1, forPreview: true),
                    rotationDegrees: 95,
                    horizontalOffset: model.calculatingProportionalValue(withRatio: -0.03, forPreview: true),
                    verticalOffset:  model.calculatingProportionalValue(withRatio: -0.47, forPreview: true)
                )
        }
    }
}

#Preview {
    ImWearingPantsPreviewView()
        .environment(ArtWorkModel.preview)
}
