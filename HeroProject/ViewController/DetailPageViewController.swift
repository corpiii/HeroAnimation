//
//  DetailPageViewController.swift
//  HeroProject
//
//  Created by 이정민 on 2022/05/31.
//

import UIKit
import Hero
import Stevia

class DetailPageViewController: UIViewController {

    let coffeeImage = UIImageView()
    let coffeeName = UILabel()
    let coffeePrice = UILabel()
    let coffeeRecipe = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        setLayout()
    }
    
    init(coffeeName: String, coffeePrice: Int, coffeeImage: UIImage) {
        self.coffeeName.text = coffeeName
        self.coffeePrice.text = String(coffeePrice) + "원"
        self.coffeeImage.image = coffeeImage
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setLayout() {
        self.view.subviews (
            coffeeImage,
            coffeeName,
            coffeePrice,
            coffeeRecipe
        )
        
        self.view.layout (
            10%,
            coffeeImage,
            10,
            coffeeName,
            coffeePrice,
            |-coffeeRecipe-|,
            10
        )
        
        coffeeImage.size(80).centerHorizontally()
        coffeeName.centerHorizontally()
        coffeePrice.centerHorizontally()
        coffeePrice.alpha = 0.5
        
        coffeeRecipe.isEditable = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
