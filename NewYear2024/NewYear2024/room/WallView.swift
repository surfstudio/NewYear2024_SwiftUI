//
//  WallView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 06.12.2023.
//

import SwiftUI

struct WallView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("wall")
                    .resizable()
                HStack {
                    WindowView()
                        .frame(width: 0.15 * geometry.size.width)
                    Spacer()
                    VStack(spacing: 30) {
                        Text("HAPPY NEW YEAR!")
                            .font(.system(size: 64, weight: .bold))
                            .foregroundStyle(.white)

                        ClockView()
                            .frame(width: 0.11 * geometry.size.width)
                    }
                    .offset(y: -50)
                    Spacer()
                    WindowView()
                        .frame(width: 0.15 * geometry.size.width)
                }
                .padding(.horizontal, 70)
                .offset(y: -70)
            }
        }
    }
}

#Preview(traits: .landscapeLeft) {
    WallView()
}
