//
//  ViewController.swift
//  SolarOrbit-Easy
//
//  Created by Gabriel Massana on 10/4/16.
//  Copyright © 2016 Gabriel Massana. All rights reserved.
//

import UIKit

import PureLayout

class ViewController: UIViewController {

    //MARK: - Accessors

    var SunDiameter: CGFloat = 109.3 // 1392684.0 Km
    var EarthDiameter: CGFloat = 1.0 //12742.0 Km

    var EarthDistanceFromSun: CGFloat = 11740.7 //149600000 Km
    
    var sunImageView: UIImageView = {
       
        let sunImageView: UIImageView = UIImageView.newAutoLayoutView()
        
        sunImageView.image = UIImage(named: "sun")
        
        return sunImageView
    }()
    
    var earthImageView: UIImageView = {
        
        let earthImageView: UIImageView = UIImageView.newAutoLayoutView()
        
        earthImageView.image = UIImage(named: "earth")
        
        return earthImageView
    }()
    
    //MARK: - ViewLifeCycle

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.addSubview(sunImageView)
        view.addSubview(earthImageView)
        
        
        
        
    }

    //MARK: - Constraints
    
    override func updateViewConstraints() {
        
        super.updateViewConstraints()
        
        sunImageView.autoAlignAxisToSuperviewAxis(ALAxis.Horizontal)
        sunImageView.autoAlignAxisToSuperviewAxis(ALAxis.Vertical)
        sunImageView.autoSetDimensionsToSize(CGSize.init(width: SunDiameter, height: SunDiameter))
        
        earthImageView.autoAlignAxisToSuperviewAxis(ALAxis.Vertical)
        earthImageView.autoSetDimensionsToSize(CGSize.init(width: EarthDiameter * 30, height: EarthDiameter * 30))
        earthImageView.autoPinEdge(ALEdge.Bottom, toEdge: ALEdge.Top, ofView: sunImageView, withOffset: -150)
    }
}

