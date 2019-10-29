//
//  tableCell.swift
//  crazytableview
//
//  Created by mohamed haggag on 10/29/19.
//  Copyright © 2019 mohamed haggag. All rights reserved.
//

import UIKit

class tableCell: UITableViewCell {
    
    @IBOutlet weak var imagename : UIImageView!
    @IBOutlet weak var name : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        initmotion()
    }
    func configrecell(title : String , pic : String){
        imagename.image = UIImage(named: pic)
        name.text = title
    }
    
    func initmotion (){
        
        let max = CGFloat(50)
        let min = CGFloat(-50)
        
        let motionx = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        motionx.minimumRelativeValue = min
        motionx.maximumRelativeValue = max
        let motiony = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        motiony.minimumRelativeValue = min
        motiony.maximumRelativeValue = max
        let groupmotion = UIMotionEffectGroup()
        groupmotion.motionEffects = [motiony,motionx]
        imagename.addMotionEffect(groupmotion)
    }
}
