//
//  coffeeColectionViewCell.swift
//  HeroProject
//
//  Created by 이정민 on 2022/05/28.
//

import UIKit
import Stevia

class CoffeeCollectionViewCell: UICollectionViewCell {
    
    let containerView = UIView()
    var coffeeImage = UIImageView()
    let coffeeInfoView = UIView()
    var coffeeName = UILabel()
    var coffeePrice = UILabel()
    
    var isAnimated = false
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setLayout()
    }
    
    func setLayout() {
        subviews (
            containerView.subviews (
                coffeeImage,
                coffeeInfoView.subviews(
                    coffeeName,
                    coffeePrice
                )
            )
        )
        
        setCoffeeInfoLayout()
        //setCoffeeImageLayout()
        
        layout (
            |containerView|
        )
        containerView.centerVertically()
        
        containerView.layout (
            |-coffeeImage-10-coffeeInfoView-|
        )
        
        equal(heights: [coffeeImage, coffeeInfoView])
        
        //setCoffeeImageLayout()
        coffeeImage.contentMode = .scaleToFill
        coffeeImage.centerVertically()
        
        equal(heights: [coffeeImage, coffeeInfoView])
    }
    
    override func layoutSubviews() {
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width
        let screenHeight = screenRect.size.height
        
        // image rounded section
        coffeeImage.size(screenWidth / 5)
        coffeeImage.layer.borderWidth = 1.0
        coffeeImage.layer.masksToBounds = false
        coffeeImage.layer.borderColor = UIColor.clear.cgColor
        coffeeImage.layer.cornerRadius = 15
        coffeeImage.clipsToBounds = true
        
        // cell rounded section
        self.layer.cornerRadius = 15.0
        self.layer.borderWidth = 2.0
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.masksToBounds = true
        
        // cell shadow section
        self.contentView.layer.cornerRadius = 15.0
        self.contentView.layer.borderWidth = 5.0
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = true
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0.0)
        self.layer.shadowRadius = 6.0
        self.layer.shadowOpacity = 0.6
        self.layer.cornerRadius = 15.0
        self.layer.masksToBounds = false
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
        
    }
    
    func setCoffeeInfoLayout() {
        
        coffeePrice.font = UIFont.systemFont(ofSize: 15)
        coffeePrice.alpha = 0.5
        
        coffeeInfoView.subviews (
            coffeeName,
            coffeePrice
        )
        
        coffeeInfoView.layout (
            |-coffeeName-|,
              6,
              |-coffeePrice-|
        )
        
    }
//
//    func setCoffeeImageLayout() {
//
//    }
}
