//
//  ViewController.swift
//  Snowflake
//
//  Created by Chang Sophia on 12/12/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
var image: String?
  
  
    @IBOutlet weak var qtySlider: UISlider!
    @IBOutlet weak var sizeSlider: UISlider!
    @IBOutlet weak var olafImageView: UIImageView!
    
    
    
    
 
    @IBAction func qtyAdded(_ sender: Any) {
        
        let snowFlakeEmitterCell = CAEmitterCell()
        snowFlakeEmitterCell.contents = UIImage(named: "snowflakewhite")?.cgImage
        snowFlakeEmitterCell.birthRate = qtySlider.value
        snowFlakeEmitterCell.lifetime = 60
        snowFlakeEmitterCell.velocity = 20
        snowFlakeEmitterCell.velocityRange = 200
        snowFlakeEmitterCell.emissionRange = (45 * .pi/180)
        snowFlakeEmitterCell.scale = 0.1
        snowFlakeEmitterCell.scaleRange = 0.3
        snowFlakeEmitterCell.spin = 0.5
        snowFlakeEmitterCell.spinRange = 1
        
        
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: 0)
        emitterLayer.emitterShape = CAEmitterLayerEmitterShape.line
        emitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 2)
        
        emitterLayer.emitterCells = [snowFlakeEmitterCell]
        
        view.layer.addSublayer(emitterLayer)

        
    }
    
    @IBAction func sizeEnlarged(_ sender: Any) {
        let snowFlakeEmitterCell = CAEmitterCell()
        snowFlakeEmitterCell.contents = UIImage(named: "snowflakewhite")?.cgImage
        snowFlakeEmitterCell.scaleRange = CGFloat(sizeSlider.value)
        snowFlakeEmitterCell.birthRate = qtySlider.value
        snowFlakeEmitterCell.lifetime = 80
        snowFlakeEmitterCell.velocity = 20
        snowFlakeEmitterCell.velocityRange = 100
        snowFlakeEmitterCell.emissionRange = (45 * .pi/180)
        snowFlakeEmitterCell.scale = 0.2
        snowFlakeEmitterCell.scaleRange = 0.3
        snowFlakeEmitterCell.spin = 0.5
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: 0)
        emitterLayer.emitterShape = CAEmitterLayerEmitterShape.line
        emitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 2)
        
        emitterLayer.emitterCells = [snowFlakeEmitterCell]
        
        view.layer.addSublayer(emitterLayer)
    }
    
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       
}
}
