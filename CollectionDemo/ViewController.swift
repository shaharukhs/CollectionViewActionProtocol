//
//  ViewController.swift
//  CollectionDemo
//
//  Created by webwerks on 7/9/18.
//  Copyright © 2018 webwerks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var collectionView: UICollectionView!
    
    let searchView = SearchListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        searchView.frame = self.view.frame
        self.view.addSubview(searchView)
        
        self.collectionView = self.searchView.collectionView
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        self.collectionView.register(UINib(nibName: "SearchCollectionCell", bundle: nil), forCellWithReuseIdentifier: "SearchCollectionCell")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell: SearchCollectionCell! = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCollectionCell", for: indexPath) as? SearchCollectionCell
        
        if cell == nil {
            collectionView.register(UINib(nibName: "SearchCollectionCell", bundle: nil), forCellWithReuseIdentifier: "SearchCollectionCell")
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCollectionCell", for: indexPath) as? SearchCollectionCell
        }
        cell.delegate = self
        
        return cell
    }
}

extension ViewController : SearchCollectionCellDelegate {
    
    func searchCellShareButton(sender: SearchCollectionCell) {
        
        if let indexpath = self.collectionView.indexPath(for: sender) {
            print(indexpath)
        }
    }
    
}

