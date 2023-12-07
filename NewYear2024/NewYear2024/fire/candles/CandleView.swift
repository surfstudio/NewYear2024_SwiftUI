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
            let coeff = 1.0
            
            VStack(spacing: 0) {
                CnadleFireView()
                    .frame(
                        width: coeff * 0.55 * geometry.size.width,
                        height: coeff * 0.25 * geometry.size.height
                    )
                Image(imageName)
                    .resizable()
                    .frame(
                        width: coeff * geometry.size.width,
                        height: coeff * 0.75 * geometry.size.height
                    )
            }
        }
    }

}

#Preview {
    CandleView(imageName: "candle_blue")
        .frame(height: 300)
}
