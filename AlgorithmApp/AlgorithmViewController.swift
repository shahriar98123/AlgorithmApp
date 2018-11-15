//
//  ViewController.swift
//  AlgorithmApp
//
//  Created by Shams, Shahriar on 11/15/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class AlgorithmViewController: UIViewController {
    @IBOutlet weak var algorithmText: UILabel!
    
    @IBOutlet weak var swiftImage: UIImageView!
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        formatAlgorithm()
    }
    
    private func formatAlgorithm() -> Void
    {
        let title: String = "How to pumpkin"
        let stepOne : String = "First you grab all materials for pumpkin doing!"
        let stepTwo : String = "Grab small blades or small drill tools and pumpkin"
        let stepThree : String = "Take pumpkin and cut a hole around the top to remove stem"
        let stepFour : String = "Take out all of the organs of poor pumpkin boy"
        let stepFive : String = "Put the lid back on pumpkin boy and draw outline of spooky face with marker."
        let stepSix : String; "You have created awesome pumpkin boy."
        let algorithm = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
            let bullet: String = ""
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep: NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableAttributedStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }


}

