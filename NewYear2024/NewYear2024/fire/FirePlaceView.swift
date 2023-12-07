//
//  FirePlaceView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 08.10.2023.
//

import SwiftUI

struct FirePlaceView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Spacer()
                ZStack(alignment: .bottom) {
                    Image("fire_place")
                        .resizable()
                        .frame(height: geometry.size.height)
                    Image("firewood")
                        .resizable()
                        .frame(height: 0.14 * geometry.size.height)
                        .aspectRatio(0.8, contentMode: .fit)
                        .offset(y: -0.05 * geometry.size.height)

                    FireView()
                        .frame(height: 0.55 * geometry.size.height)
                        .aspectRatio(0.56, contentMode: .fit)
                        .offset(y: -0.12 * geometry.size.height)
                }
                .aspectRatio(1.8, contentMode: .fit)
                Spacer()
            }
        }
    }
}

#Preview {
    FirePlaceView()
        .frame(height: 300)
}
