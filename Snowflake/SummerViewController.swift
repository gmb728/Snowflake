//
//  SummerViewController.swift
//  Snowflake
//
//  Created by Chang Sophia on 12/12/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit

class SummerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let snowFlakeEmitterCell = CAEmitterCell()
        
        snowFlakeEmitterCell.contents = UIImage(named: "drop")?.cgImage
        snowFlakeEmitterCell.birthRate = 30
        snowFlakeEmitterCell.lifetime = 60
        snowFlakeEmitterCell.velocity = 40
        snowFlakeEmitterCell.velocityRange = 300
        snowFlakeEmitterCell.emissionRange = (45 * .pi/180)
        snowFlakeEmitterCell.scale = 0.2
        snowFlakeEmitterCell.scaleRange = 0.5
        
        
        
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: 0)
        emitterLayer.emitterShape = CAEmitterLayerEmitterShape.line
        emitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 5)
        emitterLayer.emitterCells = [snowFlakeEmitterCell]
        
        view.layer.addSublayer(emitterLayer)


        // Do any additional setup after loading the view.
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
