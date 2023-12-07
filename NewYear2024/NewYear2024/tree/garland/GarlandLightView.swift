//
//  GarlandLightView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 06.12.2023.
//

import SwiftUI

struct GarlandLightView: View {

    @State private var isAnimate = false
    let hasDelay: Bool

    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            ZStack {
                Circle().fill(.fireYellow)
                    .frame(width: width, height: height)
                    .scaleEffect(isAnimate ? 1 : 0.7)
                    .opacity(isAnimate ? 0.4 : 0.1)

                Circle().fill(.fireYellow)
                    .frame(width: 0.7 * width, height: 0.7 * height)
                    .scaleEffect(isAnimate ? 1 : 0.5)
                    .opacity(isAnimate ? 0.6 : 0.1)

                Circle().fill(.fireYellow)
                    .frame(width: 0.4 * width, height: 0.4 * height)
            }
        }
        .aspectRatio(1, contentMode: .fit)
        .onAppear {
            if hasDelay {
                Task { @MainActor in
                    try await Task.sleep(for: .seconds(0.6))
                    animate()
                }
            } else {
                animate()
            }
        }
        .animation(.easeInOut.speed(0.4).repeatForever(), value: isAnimate)
    }

    func animate() {
        isAnimate.toggle()
    }
}

#Preview {
    GarlandLightView(hasDelay: true)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
}
