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
        
        coffeeName.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        coffeeName.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = false
        coffeeName.bottomAnchor.constraint(equalTo: coffeePrice.topAnchor, constant: 8).isActive = true
        coffeeName.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 8).isActive = true
        
        coffeePrice.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = false
        coffeePrice.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = false
        coffeePrice.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        coffeePrice.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 8).isActive = true
        
        
    }
    
    func setCoffeeImageLayout() {
        coffeeImage.width(50).height(50)
        coffeeImage.translatesAutoresizingMaskIntoConstraints = false
        
        coffeeImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        coffeeImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        coffeeImage.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        coffeeImage.trailingAnchor.constraint(equalTo: coffeeInfoView.leadingAnchor).isActive = true
        
        
    }
}
