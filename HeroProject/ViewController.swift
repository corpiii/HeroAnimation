//
//  ViewController.swift
//  HeroProject
//
//  Created by 이정민 on 2022/05/28.
//

import UIKit
import Hero
import Stevia

class ViewController: UIViewController {
    
    var coffeeList: [Coffee] = []
    var coffeeMenu: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("coffee List generated")
        coffeeList.append(Coffee(name: "아메리카노", price: 4000))
        coffeeList.append(Coffee(name: "아메리카노2", price: 40001))
        coffeeList.append(Coffee(name: "아메리카노3", price: 40002))
        coffeeList.append(Coffee(name: "아메리카노4", price: 40003))
        
        configureCollectionView()
        registerCollectionView()
        setCollectionViewDelegate()
        //setLayout()
        
    }
    
    func setLayout() {
        
        self.view.subviews (
            coffeeMenu
        )
        
        self.view.layout (
            8,
            |-coffeeMenu-|,
            8
        )
    }
    
    func configureCollectionView() {
        print("커피 메뉴판 생성")
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .vertical
        layout.sectionInset = .zero
        
        self.coffeeMenu = CoffeeCollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        self.coffeeMenu.translatesAutoresizingMaskIntoConstraints = false
        self.coffeeMenu.backgroundColor = .white
        self.view.addSubview(coffeeMenu)
        
        coffeeMenu.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        coffeeMenu.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        coffeeMenu.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        coffeeMenu.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    func registerCollectionView() {
        print("커피 메뉴판 뷰 identifier 등록")
        coffeeMenu.register(CoffeeCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "cellIdentifier")
    }
    
    func setCollectionViewDelegate() {
        print("커피 메뉴판 뷰 델리게이터, 데이터소스 등록")
        coffeeMenu.delegate = self
        coffeeMenu.dataSource = self
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 350, height: 120)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return coffeeList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coffeeMenu!.dequeueReusableCell(withReuseIdentifier: "cellIdentifier", for: indexPath) as! CoffeeCollectionViewCell
    
        cell.coffeeImage.image = UIImage(named: "pigeonto")
        cell.coffeeName.text(coffeeList[indexPath.row].name)
        cell.coffeePrice.text(String(coffeeList[indexPath.row].price) + "원")
        
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 0.5
        cell.layer.shadowOffset = CGSize(width: 3, height: 3)
        cell.layer.shadowRadius = 5.0
        cell.layer.shadowOpacity = 1
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.masksToBounds = false
        
        print("coffee item \(indexPath.row)생성")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(10)
    }
}
