//
//  SearchView.swift
//  CollectionDemo
//
//  Created by webwerks on 7/10/18.
//  Copyright © 2018 webwerks. All rights reserved.
//

import UIKit

class SearchListView: UIView {
    @IBOutlet weak var collectionView: UICollectionView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initializeSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeSubviews()
    }
    
    func initializeSubviews() {
        let xibFileName = "SearchListView" // xib extention not needed
        let view = Bundle.main.loadNibNamed(xibFileName, owner: self, options: nil)?[0] as! UIView
        self.addSubview(view)
        view.frame = self.bounds
    }

}
