//
//  ViewController.swift
//  HeroProject
//
//  Created by 이정민 on 2022/05/28.
//

import UIKit
import Hero

class ViewController: UIViewController {

    var coffeList: [Coffee] = []
    var coffeCollectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return coffeList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return 
    }
    
    
}
