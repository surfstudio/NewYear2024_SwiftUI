//
//  StarLightView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 07.12.2023.
//

import SwiftUI

struct StarLightView: View {

    @State private var isAnimate = false

    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            ZStack {
                Circle()
                    .fill(
                        RadialGradient(gradient: Gradient(colors: [.fireYellow, .clear]), center: .center, startRadius: 0.1 * width, endRadius: 0.5 * width)
                    )
                    .frame(width: width, height: height)
                    .scaleEffect(isAnimate ? 1.6 : 1)
            }
        }
        .aspectRatio(1, contentMode: .fit)
        .onAppear {
            isAnimate.toggle()
        }
        .animation(.easeInOut.speed(0.2).repeatForever(), value: isAnimate)
    }

}

#Preview {
    StarLightView()
        .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
}
