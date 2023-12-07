//
//  SnowView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 06.12.2023.
//

import SwiftUI
import SpriteKit

struct SnowView: View {

    var scene: SKScene {
        let scene = SnowScene()
        scene.scaleMode = .resizeFill
        scene.backgroundColor = .clear
        return scene
    }

    var body: some View {
        SpriteView(scene: scene, options: [.allowsTransparency])
    }

}

#Preview {
    ZStack {
        Rectangle()
        SnowView()
    }
    .frame(width: 180, height: 314)
}
