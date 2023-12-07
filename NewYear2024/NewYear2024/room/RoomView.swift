//
//  RoomView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 06.12.2023.
//

import SwiftUI

struct RoomView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 0) {
                    ZStack(alignment: .bottom) {
                        WallView()
                            .frame(height: 0.77 * geometry.size.height)
                        VStack(spacing: 0) {
                            CandlesView().frame(height: 104)
                            FirePlaceView()
                                .frame(height: 0.32 * geometry.size.height)
                        }
                    }
                    floor
                }
                DecoratedTreeView()
                    .position(x: 169 + 35, y: 312 + 167)

                Image("cat")
                    .position(x: 113 + 474, y: 53 + 674)

                Image("human")
                    .position(x: 200 + 736, y: 180 + 446)
            }
        }
        .ignoresSafeArea()
    }

    var floor: some View {
        Rectangle()
            .fill(.white)
    }
}

#Preview(traits: .landscapeLeft) {
    RoomView()
}
