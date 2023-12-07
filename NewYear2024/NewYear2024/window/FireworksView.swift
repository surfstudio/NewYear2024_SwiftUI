//
//  FireworksView.swift
//  NewYear2024
//
//  Created by Daria Leonova on 08.10.2023.
//

import SwiftUI

struct FireworksView: View {
    @State private var acceleration = 5
    var body: some View {
        ZStack {
            ForEach(0 ..< 12) { item in
                VStack (spacing: 100) {
                    Capsule()
                        .frame(width: 3, height: 6)
                        .foregroundColor (.orange)
                        .hueRotation(.degrees (Double (item) * 30))
                        .blendMode(.exclusion)
                        .offset(y: CGFloat (acceleration))
                        .rotationEffect(.degrees(Double(item) * 30), anchor: .bottom)
                }
            }
        }
        .animation(.easeOut(duration: 1.5).repeatForever(autoreverses: false).delay(0.9), value: acceleration)
        .onAppear {
            acceleration = 100
        }
    }
}

#Preview {
    FireworksView()
}
