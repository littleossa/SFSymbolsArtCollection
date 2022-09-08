//
//  CrayonFace.swift
//  CrayonShinchan
//
//  Created by littleossa on 2022/02/23.
//

import SwiftUI
import SFUserFriendlySymbols

struct CrayonFace: View {
    
    enum FaceType: String {
        case line
        case fill
        
        var symbol: SFSymbols {
            switch self {
            case .line:
                return .cloud
            case .fill:
                return .cloudFill
            }
        }
        
        var color: Color {
            switch self {
            case .line:
                return .black
            case .fill:
                return .paleOrange
            }
        }
    }
    
    let faceType: FaceType
    let baseLength: CGFloat
    
    var body: some View {
        
        Image(symbol: faceType.symbol)
            .arrangeShape(color: faceType.color,
                          width: baseLength * 0.75,
                          height: baseLength * 0.5,
                          fontWeight: .ultraLight,
                          flipType: .horizontal,
                          rotationDegrees: 8)
    }
}

struct CrayonFace_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            CrayonFace(faceType: .fill,
                       baseLength: 400)
            CrayonFace(faceType: .line,
                       baseLength: 400)
        }
    }
}
