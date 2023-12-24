//
//  SnowScene.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 06.12.2023.
//

import SpriteKit

final class SnowScene: SKScene {

    let snowEmitterNode = SKEmitterNode(fileNamed: "SnowParticle.sks")

    override func didMove(to view: SKView) {
        guard let snowEmitterNode = snowEmitterNode else { return }
        snowEmitterNode.particleSize = CGSize(width: 50, height: 50)
        snowEmitterNode.particleLifetime = 8
        snowEmitterNode.particleLifetimeRange = 20
        addChild(snowEmitterNode)
    }

    override func didChangeSize(_ oldSize: CGSize) {
        guard let snowEmitterNode = snowEmitterNode else { return }
        snowEmitterNode.particlePosition = CGPoint(x: size.width/2, y: size.height)
        snowEmitterNode.particlePositionRange = CGVector(dx: size.width, dy: size.height)
    }

}
