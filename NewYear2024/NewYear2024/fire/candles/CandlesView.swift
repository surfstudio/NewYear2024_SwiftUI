//
//  CandlesView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 06.12.2023.
//

import SwiftUI

struct CandlesView: View {
    var body: some View {
        GeometryReader { geometry in
                HStack(alignment: .bottom, spacing: 0) {
                    Spacer()
                    CandleView(imageName: "candle_red")
                        .frame(width: 39, height: 104)
                    CandleView(imageName: "candle_purple")
                        .frame(width: 32, height: 70)
                    Rectangle()
                        .fill(.clear)
                        .frame(width: 0.19 * geometry.size.width)
                    CandleView(imageName: "candle_blue")
                        .frame(width: 32, height: 70)
                    CandleView(imageName: "candle_yellow")
                        .frame(width: 39, height: 104)
                    Spacer()
                }
        }
    }
}

#Preview {
    CandlesView()
}
