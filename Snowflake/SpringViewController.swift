//
//  SpringViewController.swift
//  Snowflake
//
//  Created by Chang Sophia on 12/12/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let snowFlakeEmitterCell = CAEmitterCell()
       
        snowFlakeEmitterCell.contents = UIImage(named: "cherry-blossom")?.cgImage
        snowFlakeEmitterCell.birthRate = 20
        snowFlakeEmitterCell.lifetime = 60
        snowFlakeEmitterCell.velocity = 20
        snowFlakeEmitterCell.velocityRange = 200
        snowFlakeEmitterCell.emissionRange = (45 * .pi/180)
        snowFlakeEmitterCell.scale = 0.1
        snowFlakeEmitterCell.scaleRange = 0.5
        snowFlakeEmitterCell.spin = 0.5
        snowFlakeEmitterCell.spinRange = 1
        
        
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: 0)
        emitterLayer.emitterShape = CAEmitterLayerEmitterShape.line
        emitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 5)
        emitterLayer.emitterCells = [snowFlakeEmitterCell]
        
        view.layer.addSublayer(emitterLayer)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
