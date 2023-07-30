//
//  ViewController.swift
//  ScratchCardViewDemo
//
//  Created by IPS-149 on 28/07/23.
//

import UIKit

class ViewController: UIViewController, ScratchDelegate {
    
    var scratchCardhalf = ""
    
    @IBOutlet weak var viewBehindScratchCar: UIView!
    @IBOutlet weak var scratchCard: ScratchCard!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
               // scratchCard.coverImage = UIImage(named: "sampleImage")
        scratchCard.scratchDelegate = self
        
        viewBehindScratchCar.layer.cornerRadius = 10
        viewBehindScratchCar.layer.shadowColor = UIColor.black.cgColor
        viewBehindScratchCar.layer.shadowOpacity = 1
        viewBehindScratchCar.layer.shadowOffset = CGSize.init(width: 2, height: 2)
        viewBehindScratchCar.clipsToBounds = false
        print(scratchCardhalf)
    }
    func scratch(percentage value: Int) {
            print("Scratched Percentage: \(value)%")
            scratchCardhalf = String(format: "-- %d %@ --", value, "%")
            
            if value >= 40 {
                scratchCard.isHidden = true
            }
    }
}
