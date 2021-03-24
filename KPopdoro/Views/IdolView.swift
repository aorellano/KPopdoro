//
//  IdolView.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/19/21.
//

import UIKit
import SpriteKit

class IdolView: SKView {
    private var idol: SKSpriteNode!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupScene()
        setupIdol()
    }
    
    private func setupScene() {
        translatesAutoresizingMaskIntoConstraints = false
        
        let size = CGSize(width: UIScreen.main.bounds.width, height: 300)
        let scene = SKScene(size: size)
        scene.backgroundColor = Theme.backgroundColor
        presentScene(scene)
    }
    
    private func setupIdol() {
        let characterTexture = SKTexture(imageNamed: "RM1")
        idol = SKSpriteNode(texture: characterTexture)
        idol.size = CGSize(width: (scene?.frame.width)!/1.85, height: (scene?.frame.width)!/1.65)
        
        idol.position = CGPoint(x: UIScreen.main.bounds.width/2, y: 140)
        scene?.addChild(idol)
        idolWave(with: characterTexture)
    }
    
    private func idolWave(with characterTexture: SKTexture) {
        let frame1 = SKTexture(imageNamed: "RMWave")
        let frame2 = SKTexture(imageNamed: "RMWave2")
        
        let animation = SKAction.animate(with: [frame1, frame2], timePerFrame: 0.12, resize: false, restore: true)
        let wave = SKAction.repeat(animation, count: 5)
        idol.run(wave)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
