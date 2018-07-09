//
//  SearchCollectionCell.swift
//  CollectionDemo
//
//  Created by webwerks on 7/9/18.
//  Copyright © 2018 webwerks. All rights reserved.
//

import UIKit

protocol SearchCollectionCellDelegate {
    func searchCellShareButton(sender:SearchCollectionCell)
}

class SearchCollectionCell: UICollectionViewCell {

    var delegate:SearchCollectionCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func cellShareButtonAction(_ sender: Any) {
        
        if delegate != nil {
            delegate?.searchCellShareButton(sender: self)
        }
    }
    
}
