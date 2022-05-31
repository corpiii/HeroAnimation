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
    
    let screenRect = UIScreen.main.bounds
    lazy var screenWidth = screenRect.size.width
    lazy var screenHeight = screenRect.size.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("coffee List generated")
        coffeeList.append(Coffee(name: "아메리카노", price: 4000))
        coffeeList.append(Coffee(name: "아메리카노2", price: 40001))
        coffeeList.append(Coffee(name: "아메리카노3", price: 40002))
        coffeeList.append(Coffee(name: "아메리카노4", price: 40003))
        coffeeList.append(Coffee(name: "아메리카노", price: 4000))
        coffeeList.append(Coffee(name: "아메리카노2", price: 40001))
        coffeeList.append(Coffee(name: "아메리카노3", price: 40002))
        coffeeList.append(Coffee(name: "아메리카노4", price: 40003))
        coffeeList.append(Coffee(name: "아메리카노", price: 4000))
        coffeeList.append(Coffee(name: "아메리카노2", price: 40001))
        coffeeList.append(Coffee(name: "아메리카노3", price: 40002))
        coffeeList.append(Coffee(name: "아메리카노4", price: 40003))
        coffeeList.append(Coffee(name: "아메리카노", price: 4000))
        coffeeList.append(Coffee(name: "아메리카노2", price: 40001))
        coffeeList.append(Coffee(name: "아메리카노3", price: 40002))
        coffeeList.append(Coffee(name: "아메리카노4", price: 40003))
        coffeeList.append(Coffee(name: "아메리카노", price: 4000))
        coffeeList.append(Coffee(name: "아메리카노2", price: 40001))
        coffeeList.append(Coffee(name: "아메리카노3", price: 40002))
        coffeeList.append(Coffee(name: "아메리카노4", price: 40003))
        coffeeList.append(Coffee(name: "아메리카노", price: 4000))
        coffeeList.append(Coffee(name: "아메리카노2", price: 40001))
        coffeeList.append(Coffee(name: "아메리카노3", price: 40002))
        coffeeList.append(Coffee(name: "아메리카노4", price: 40003))
        
        configureCollectionView()
        hero.isEnabled = true
        
        registerCollectionView()
        setCollectionViewDelegate()
        setLayout()
        
    }
    
    func configureCollectionView() {
        print("커피 메뉴판 생성")
        
        self.coffeeMenu = CoffeeCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        
    }
    
    func setLayout() {
        print("뷰 컨트롤러 레이아웃 세팅")
        self.view.subviews (
            coffeeMenu
        )
        
        self.view.layout (
            15%,
            |-coffeeMenu-|,
            8
        )
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
        return CGSize(width: screenWidth - 40, height: screenHeight / 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return coffeeList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coffeeMenu!.dequeueReusableCell(withReuseIdentifier: "cellIdentifier", for: indexPath) as! CoffeeCollectionViewCell
        
        cell.coffeeImage.image = UIImage(named: "pigeonto")
        cell.coffeeName.text(coffeeList[indexPath.row].name)
        cell.coffeePrice.text(String(coffeeList[indexPath.row].price) + "원")
        
        print("coffee item \(indexPath.row)생성")
        
        AnimationUtility.viewSlideInFromRight(toLeft: cell)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0)
    }
}
