//
//  coffeeColectionViewCell.swift
//  HeroProject
//
//  Created by 이정민 on 2022/05/28.
//

import UIKit
import Stevia

class CoffeeCollectionViewCell: UICollectionViewCell {
    
    var coffeeImage = UIImageView()
    
    let coffeeInfoView = UIView()
    var coffeeName = UILabel()
    var coffeePrice = UILabel()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.layer.masksToBounds = false
        
        setLayout()
    }
    
    func setLayout() {
        contentView.addSubview(coffeeImage)
        contentView.addSubview(coffeeInfoView)
        setCoffeeImageLayout()
        setCoffeeInfoLayout()
        
        layout (
            |-coffeeImage-10-coffeeInfoView-|
        )
        
        equal(heights: [coffeeImage, coffeeInfoView])
    }
//
//    func setCoffeeInfoLayout() {
//        coffeeInfoView.subviews (
//            coffeeName,
//            coffeePrice
//        )
//
//        coffeeInfoView.layout (
//            |coffeeName|,
//             8,
//             |coffeePrice|
//        )
//
//        coffeeName.font = UIFont.systemFont(ofSize: 24)
//        coffeeName.text = "No Name"
//
//        coffeePrice.font = UIFont.systemFont(ofSize: 18)
//        coffeePrice.alpha = 0.7
//        coffeePrice.text = "No Price"
//    }
    func setCoffeeInfoLayout() {
        coffeeInfoView.addSubview(coffeeName)
        coffeeInfoView.addSubview(coffeePrice)
        
        coffeeName.translatesAutoresizingMaskIntoConstraints = false
        coffeePrice.translatesAutoresizingMaskIntoConstraints = false
        coffeeInfoView.translatesAutoresizingMaskIntoConstraints = false
        
        coffeeInfoView.layout (
            |-coffeeName-|,
              10,
              |-coffeePrice-|
        )
        
//        coffeeInfoView.leadingAnchor.constraint(equalTo: coffeeImage.trailingAnchor, constant: 15).isActive = true
//
//        coffeeName.topAnchor.constraint(equalTo: coffeeInfoView.topAnchor, constant: 8).isActive = true
//        coffeeName.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = false
//        coffeeName.bottomAnchor.constraint(equalTo: coffeePrice.topAnchor, constant: 8).isActive = false
//        coffeeName.trailingAnchor.constraint(equalTo: coffeeInfoView.trailingAnchor, constant: 8).isActive = true
//
//        coffeePrice.topAnchor.constraint(equalTo: coffeeName.topAnchor, constant: 8).isActive = true
//        coffeePrice.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = false
//        coffeePrice.bottomAnchor.constraint(equalTo: coffeeInfoView.bottomAnchor).isActive = false
//        coffeePrice.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 8).isActive = false
//
        
    }
    
    func setCoffeeImageLayout() {
        coffeeImage.width(80).height(80)
        coffeeImage.translatesAutoresizingMaskIntoConstraints = false
        

        coffeeImage.centerVertically()
//
//        coffeeImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
//        coffeeImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
////        coffeeImage.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
////        coffeeImage.trailingAnchor.constraint(equalTo: coffeeInfoView.leadingAnchor).isActive = true
////
    }
}
