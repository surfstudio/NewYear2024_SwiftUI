//
//  CnadleFireView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 06.12.2023.
//

import SwiftUI

struct CnadleFireView: View {

    @State private var bigFlameData = FlameShape.AnimatableData(0.5, 1)

    private let timer = Timer.publish(every: 0.3, on: .main, in: .default).autoconnect()

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .topLeading) {
                FlameShape(animatableData: bigFlameData)
                    .fill(Color.fireYellow)
                    .frame(width: geometry.size.width, height: geometry.size.height)

                FlameShape(animatableData: bigFlameData)
                    .fill(LinearGradient(gradient: Gradient(
                        colors: [.fireYellow, .fireRed]),
                                         startPoint: .bottom,
                                         endPoint: .center
                    ))
                    .offset(.init(
                        width: geometry.size.width / 4.7,
                        height: 0.3 * geometry.size.height
                    ))
                    .frame(
                        width: geometry.size.width / 1.7,
                        height: geometry.size.height / 1.7
                    )
            }
        }
        .onReceive(timer) { _ in
            withAnimation(.linear(duration: 0.2)) {
                bigFlameData = .init(CGFloat.random(in: 0.2...0.7), CGFloat.random(in: -0.2...0))
            }
        }
    }
}

#Preview {
    CnadleFireView()
}
