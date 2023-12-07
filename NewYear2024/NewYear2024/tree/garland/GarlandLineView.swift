//
//  GarlandLineView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 07.12.2023.
//

import SwiftUI

struct GarlandLineView: View {

    private let lightDistance: CGFloat = 38
    private let offset: CGFloat = 16

    var body: some View {
        GeometryReader { geometry in
            let lightCoordinates = makeLightsCoordinates(geometry: geometry)
            ZStack {
                Path { path in
                    path.move(to: .init(x: 0, y: geometry.size.height))
                    for coordinate in lightCoordinates {
                        path.addLine(to: coordinate)
                    }
                    path.addLine(to: .init(x: geometry.size.width, y: 0))
                }
                .stroke(style: .init(lineWidth: 3, lineCap: .round))
                .foregroundColor(.black)

                ForEach(Array(lightCoordinates.enumerated()), id: \.offset) { index, coordinate in
                    GarlandLightView(hasDelay: index % 2 == 0)
                        .frame(width: 32, height: 32)
                        .position(x: coordinate.x, y: coordinate.y)
                }
            }
        }
    }

    func makeLightsCoordinates(geometry: GeometryProxy) -> [CGPoint] {
        var result = [CGPoint]()

        let numberOfLights = Int(geometry.size.width / lightDistance)
        let yStep = geometry.size.height / (geometry.size.width / lightDistance)

        var x: CGFloat = 0
        var y = geometry.size.height

        for _ in 1...numberOfLights {
            x += lightDistance
            y -= yStep
            result.append(.init(x: x, y: y))
        }

        return result
    }
}

#Preview {
    GarlandLineView()
        .frame(width: 200, height: 90)
}
