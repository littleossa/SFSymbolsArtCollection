//
//  ImWearingPantsArtView+Pose.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension ImWearingPantsArtView {
    
    enum Pose: String {
        case walk = "figure.walk"
        case discSport = "figure.disc.sports"
        case martialArts = "figure.martial.arts"
        case strengthTraining = "figure.strengthtraining.traditional"
        case football = "figure.australian.football"
        case intervalTraining = "figure.highintensity.intervaltraining"
        case finish = ""
        
        var element: SymbolArtElement {
            SymbolArtElement(
                symbol: symbol,
                name: rawValue,
                initialPosition: .third(.second),
                primaryColor: .yellow,
                widthRatio: 0.6,
                heightRatio: 1,
                symbolCountToWaitFor: 10
            )
        }
        
        var symbol: String {
            switch self {
            case .walk:
                "􀝢"
            case .discSport:
                "􁔣"
            case .martialArts:
                "􁔳"
            case .strengthTraining:
                "􁐃"
            case .football:
                "􁒒"
            case .intervalTraining:
                "􁌎"
            case .finish:
                ""
            }
        }
        
        var next: Pose {
            switch self {
            case .walk:
                    .discSport
            case .discSport:
                    .martialArts
            case .martialArts:
                    .strengthTraining
            case .strengthTraining:
                    .football
            case .football:
                    .intervalTraining
            case .intervalTraining:
                    .finish
            case .finish:
                    .finish
            }
        }
        
        var isFinished: Bool {
            self == .finish
        }
        
        var offsetXRatio: CGFloat {
            switch self {
            case .walk, .discSport, .strengthTraining, .finish:
                0
            case .martialArts:
                0.04
            case .football:
                -0.1
            case .intervalTraining:
                -0.01
            }
        }
    }
}

#Preview {
    NavigationStack {
        ImWearingPantsArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    ImWearingPantsPreviewView()
        .environment(ArtWorkModel.preview)
}
