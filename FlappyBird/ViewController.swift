//
//  ViewController.swift
//  FlappyBird
//
//  Created by 出島大和 on 2018/01/19.
//  Copyright © 2018年 出島大和. All rights reserved.
//
import UIKit
import SpriteKit
import AVFoundation

var audioPlayerInstance : AVAudioPlayer?  // 再生するサウンドのインスタンス


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //サウンドファイルのパスを生成
        let suoundFilePah = Bundle.main.path(forResource: "decision1", ofType: "mp3")!
        let sound:URL = URL(fileURLWithPath: suoundFilePah)
        // AVAudioPlayerのインスタンスを作成
        do {
            audioPlayerInstance = try AVAudioPlayer(contentsOf: sound, fileTypeHint:nil)
        } catch {
            print("インスタンス作成失敗")
        }
        //バッファに保持していつでも再生できるようにする。
        audioPlayerInstance?.prepareToPlay()
        
        // SKViewに型を変換する
        let skView = self.view as! SKView
        
        // FPSを表示する
        skView.showsFPS = true
        
        // ノードの数を表示する
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する
        let scene = GameScene(size:skView.frame.size) // ←GameSceneクラスに変更する
        
        // ビューにシーンを表示する
        skView.presentScene(scene)
        
        skView.showsPhysics = true
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // ステータスバーを消すーーーここからーーー
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }  // ーーーここまで追加ーーー
}
