//
//  Fireworks.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/06.
//

import SwiftUI

struct Fireworks: View {
    
    var body: some View {
        
        GeometryReader { proxy in
            
            let baseLength = proxy.baseLength
            
            // Background
            ZStack {
                Image(symbol: .rectangleFill)
                    .arrangeShape(color: .midnightNavy,
                                  width: proxy.size.width * 1.5,
                                  height: proxy.size.height * 1.5)
            }
            .position(proxy.localCenter)
            
            ZStack {
                
                // SmallFireworks
                Group {
                    SmallFirework(color: .pink,
                                  fontSize: baseLength * 0.125,
                                  offsetX: baseLength * -0.225,
                                  offsetY: baseLength * 0.125)
                    
                    SmallFirework(color: .init(.yellow),
                                  fontSize: baseLength * 0.125,
                                  offsetX: baseLength * -0.075,
                                  offsetY: baseLength * 0.25)
                    
                    SmallFirework(color: .green,
                                  fontSize: baseLength * 0.125,
                                  offsetX: baseLength * 0.15,
                                  offsetY: baseLength * 0.2)
                }
                
                // LargeFireworks
                Group {
                    LargeFirework(baseLength: baseLength,
                                  color: Color(uiColor: .red),
                                  dotColor: .white)
                    .offset(x: baseLength * -0.1,
                            y: baseLength * -0.3)
                    
                    LargeFirework(baseLength: baseLength,
                                  color: .white,
                                  dotColor: .yellow)
                    .offset(x: baseLength * 0.1,
                            y: baseLength * -0.5)
                }
                
                // RocketFireworks
                Group {
                    RocketFirework(baseLength: baseLength,
                                   color: .yellow)
                    .offset(x: baseLength * 0.0025,
                            y: baseLength * 0.325)
                    
                    RocketFirework(baseLength: baseLength,
                                   color: .white)
                    .offset(x: baseLength * -0.2,
                            y: baseLength * 0.5)
                }
                
                MediumFirework(baseLength: baseLength,
                               color: .init(uiColor: .yellow),
                               dotColor: .red)
                .offset(x: baseLength * 0.225,
                        y: baseLength * 0.075)
                
                VStack {
                    Spacer()
                    
                    Buildings(baseLength: baseLength * 0.77,
                              color: .gray,
                              lightColor: .yellow)
                }
                
                VStack {
                    Spacer()
                    
                    HStack(spacing: 0) {
                        
                        // Audience
                        ForEach(0..<4) { _ in
                            Image(symbol: .person3SequenceFill)
                                .arrangeShape(fontSize: baseLength * 0.13)
                        }
                    }
                }
            }
        }
    }
}

struct Fireworks_Previews: PreviewProvider {
    static var previews: some View {
        Fireworks()
    }
}
