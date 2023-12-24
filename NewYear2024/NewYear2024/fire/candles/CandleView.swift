//
//  CandleView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 06.12.2023.
//

import SwiftUI

struct CandleView: View {

    let imageName: String

    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                CnadleFireView()
                    .frame(
                        width: 0.55 * geometry.size.width,
                        height: 0.25 * geometry.size.height
                    )
                Image(imageName)
                    .resizable()
                    .frame(
                        width: geometry.size.width,
                        height: 0.75 * geometry.size.height
                    )
            }
        }
    }

}

#Preview {
    CandleView(imageName: "candle_blue")
        .frame(height: 300)
}
