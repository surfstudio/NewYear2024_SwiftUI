//
//  FlameShape.swift
//  NewYear2024
//
//  Created by Daria Leonova on 08.10.2023.
//

import SwiftUI

struct FlameShape: Shape, Animatable {

    typealias AnimatableData = AnimatablePair<CGFloat, CGFloat>

    var animatableData: AnimatableData {
        get { .init(xCoeff, yCoeff) }
        set {
            xCoeff = newValue.first
            yCoeff = newValue.second
        }
    }

    private var xCoeff: CGFloat = 0.5
    private var yCoeff: CGFloat = 0

    private let topPartHeightCoeff: CGFloat = 0.7
    private let centerCoeff: CGFloat = 0.5

    init(animatableData: AnimatableData = .init(0.5, 0)) {
        self.animatableData = animatableData
    }

    func path(in rect: CGRect) -> Path {
        Path { path in

            path.move(to: .init(
                x: rect.width * xCoeff,
                y: rect.height * yCoeff)
            )

            path.addCurve(
                to: .init(
                    x: rect.width * 1,
                    y: rect.height * topPartHeightCoeff
                ),
                control1: .init(
                    x: rect.width * (centerCoeff + 0.1),
                    y: rect.height * 0
                ),
                control2: .init(
                    x: rect.width * 0.9,
                    y: rect.height * 0.5
                )
            )

            path.addCurve(
                to: .init(
                    x: rect.width * centerCoeff,
                    y: rect.height * 1
                ),
                control1: .init(
                    x: rect.width * 1,
                    y: rect.height * topPartHeightCoeff
                ), control2: .init(
                    x: rect.width * 1,
                    y: rect.height * 1
                )
            )

            path.addCurve(
                to: .init(
                    x: rect.width * 0,
                    y: rect.height * topPartHeightCoeff
                ),
                control1: .init(
                    x: rect.width * 0,
                    y: rect.height * 1
                ), control2: .init(
                    x: rect.width * 0,
                    y: rect.height * topPartHeightCoeff
                )
            )

            path.addCurve(
                to: .init(
                    x: rect.width * xCoeff,
                    y: rect.height * yCoeff
                ),
                control1: .init(
                    x: rect.width * 0.1,
                    y: rect.height * 0.5
                ), control2: .init(
                    x: rect.width * (centerCoeff - 0.1),
                    y: rect.height * 0
                )
            )
        }
    }

}
