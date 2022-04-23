//
//  CurrentPreminderContainerCollectionViewCell.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/22/22.
//

import UIKit
import IGListKit

class CurrentPreminderContainerCollectionViewCell: UICollectionViewCell {
    
    
    // MARK: - Variables
    
    public lazy var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout.init()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = .white
        
        return collectionView
    }()
    
    
    // MARK: - Initialization
    private func customInitCurrentPreminderContainerCollectionViewCell() {
        
        // Setup
        setupCurrentPreminderContainerCollectionViewCell()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customInitCurrentPreminderContainerCollectionViewCell()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customInitCurrentPreminderContainerCollectionViewCell()
    }
    
    
    
    // MARK: - Private API
    private func setupCurrentPreminderContainerCollectionViewCell() {
        
        // CollectionView
        self.contentView.addSubview(self.collectionView)
        self.collectionView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.contentView)
        }
        
    }
    
    
    
    // MARK: - Public API
    
    
    
}
