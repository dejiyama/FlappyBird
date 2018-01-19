//
//  GameScene.swift
//  FlappyBird
//
//  Created by 出島大和 on 2018/01/19.
//  Copyright © 2018年 出島大和. All rights reserved.
//

import UIKit
import SpriteKit

class GameScene: SKScene {
    
    // SKView状にシーンが表示された時に呼ばれるメソッド
    overfide func didMove(to view: SKView) {
        //背景色を設定
        backgroundColor = UIColor(red: 0.15, green: 0.75, blue: 0.90, alpha: 1)
    }

}
