//
//  WindowView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 08.10.2023.
//

import SwiftUI

struct WindowView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.sky)
            SnowView()
            Image("casement")
                .resizable()
        }
        .aspectRatio(0.57, contentMode: .fit)
    }
}

#Preview {
    WindowView()
        .frame(width: 180)
}
