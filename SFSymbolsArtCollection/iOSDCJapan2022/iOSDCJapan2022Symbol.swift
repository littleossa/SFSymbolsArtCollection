//
//  iOSDCJapan2022.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/31.
//

import SwiftUI

extension iOSDCJapan2022Symbol {
    
    init(size: CGFloat, color: Color) {
        self.size = size
        self.color = color
        innerSlowmoSize = size * 0.73
        dotSize = size * 0.13
        
        let x0_34Value = size * 0.34
        let x0_58Value = size * 0.58
        let x0_68Value = size * 0.68
        
        dotOffsets = [
            DotOffset(x: 0, y: -x0_68Value),
            DotOffset(x: x0_34Value, y: -x0_58Value),
            DotOffset(x: x0_58Value, y: -x0_34Value),
            DotOffset(x: x0_68Value, y: 0),
            DotOffset(x: x0_58Value, y: x0_34Value),
            DotOffset(x: x0_34Value, y: x0_58Value),
            DotOffset(x: 0, y: x0_68Value),
            DotOffset(x: -x0_34Value, y: x0_58Value),
            DotOffset(x: -x0_58Value, y: x0_34Value),
            DotOffset(x: -x0_68Value, y: 0),
            DotOffset(x: -x0_34Value, y: -x0_58Value),
            DotOffset(x: -x0_58Value, y: -x0_34Value),
        ]
    }
}

struct iOSDCJapan2022Symbol: View {
    
    let size: CGFloat
    let color: Color
    let innerSlowmoSize: CGFloat
    let dotSize: CGFloat
    let dotOffsets: [DotOffset]
    
    var body: some View {
        ZStack {
            Image(systemName: "slowmo")
                .font(.system(size: size,
                              weight: .regular,
                              design: .default))
                .foregroundColor(color)
            
            Image(systemName: "slowmo")
                .font(.system(size: innerSlowmoSize,
                              weight: .bold,
                              design: .default))
                .foregroundColor(color)

            
            ForEach(dotOffsets, id: \.self) { offset in
                Image(systemName: "circle.fill")
                    .font(.system(size: dotSize,
                                  weight: .regular,
                                  design: .default))
                    .foregroundColor(color)
                    .offset(x: offset.x,
                            y: offset.y)
                
            }
        }
    }
}
    
struct DotOffset: Hashable {
    let x: CGFloat
    let y: CGFloat
}

struct iOSDCJapan2022Symbol_Previews: PreviewProvider {
    static var previews: some View {
        iOSDCJapan2022Symbol(size: 100, color: .black)
        iOSDCJapan2022Symbol(size: 50, color: .red)
        iOSDCJapan2022Symbol(size: 25, color: .gray)
    }
}
