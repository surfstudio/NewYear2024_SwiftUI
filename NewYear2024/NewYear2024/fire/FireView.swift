//
//  FireView.swift
//  NewYear2024
//
//  Created by Daria Leonova on 08.10.2023.
//

import SwiftUI

struct FireView: View {

    @State private var bigFlameData = FlameShape.AnimatableData(0.5, 1)
    @State private var middleFlameData = FlameShape.AnimatableData(0.5, 1)
    @State private var smallFlameData = FlameShape.AnimatableData(0.5, 1)

    private let timer = Timer.publish(every: 0.3, on: .main, in: .default).autoconnect()

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .topLeading) {
                FlameShape(animatableData: smallFlameData)
                    .fill(Color.fireYellow)
                    .opacity(0.6)
                    .rotationEffect(Angle(degrees: -10), anchor: .init(x: 0, y: 0.7))
                    .offset(.init(width: 0, height: 0.35 * geometry.size.height))
                    .frame(width: geometry.size.width / 2, height: geometry.size.height / 2)

                FlameShape(animatableData: middleFlameData)
                    .fill(Color.fireYellow.gradient)
                    .opacity(0.6)
                    .rotationEffect(Angle(degrees: 10), anchor: .init(x: 0, y: 5))
                    .offset(.init(width: 0, height: 0.1 * geometry.size.height))
                    .frame(width: geometry.size.width / 2, height: geometry.size.height / 1.5)


                FlameShape(animatableData: bigFlameData)
                    .fill(Color.fireYellow)
                    .frame(width: geometry.size.width, height: geometry.size.height)

                FlameShape(animatableData: bigFlameData)
                    .fill(Color.fireRed)
                    .offset(.init(
                        width: geometry.size.width / 6,
                        height: 0.2 * geometry.size.height
                    ))
                    .frame(
                        width: geometry.size.width / 1.5,
                        height: geometry.size.height / 1.5
                    )

                FlameShape(animatableData: bigFlameData)
                    .fill(Color.fireYellow.gradient)
                    .offset(.init(
                        width: geometry.size.width / 4,
                        height: 0.35 * geometry.size.height
                    ))
                    .frame(
                        width: geometry.size.width / 2,
                        height: geometry.size.height / 2
                    )
            }
        }
        .onReceive(timer) { _ in
            withAnimation(.linear(duration: 0.2)) {
                bigFlameData = .init(CGFloat.random(in: 0.2...0.7), CGFloat.random(in: -0.2...0))
                middleFlameData = .init(CGFloat.random(in: 0.2...0.7), CGFloat.random(in: -0.2...0))
                smallFlameData = .init(CGFloat.random(in: 0.2...0.7), CGFloat.random(in: -0.2...0))
            }
        }
    }
}

#Preview {
    FireView()
}
