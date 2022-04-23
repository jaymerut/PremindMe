//
//  CurrentPreminderContainerCollectionViewCell.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/22/22.
//

import UIKit
import Core

class CurrentPreminderContainerCollectionViewCell: UICollectionViewCell {
    
    
    // MARK: - Variables
    
    public lazy var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout.init()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = .white
        
        collectionView.layer.borderColor = UIColor(rgb: 0xB22222).cgColor
        collectionView.layer.borderWidth = 1.0
        collectionView.layer.cornerRadius = 10.0
        collectionView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        
        return collectionView
    }()
    private lazy var viewHeader: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(rgb: 0xB22222)
        view.layer.cornerRadius = 10.0
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        return view
    }()
    private lazy var labelHeader: UIView = {
        let label = UILabel(frame: .zero)
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.text = "Current Preminders"
        
        return label
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
        
        // Header View
        self.contentView.addSubview(self.viewHeader)
        self.viewHeader.snp.makeConstraints { make in
            make.top.equalTo(self.contentView.snp.top)
            make.left.equalTo(self.contentView.snp.left).offset(20)
            make.right.equalTo(self.contentView.snp.right).inset(20)
            make.height.equalTo(50)
        }
        
        // Header Label
        self.viewHeader.addSubview(self.labelHeader)
        self.labelHeader.snp.makeConstraints { make in
            make.left.equalTo(self.viewHeader.snp.left).offset(10)
            make.right.equalTo(self.viewHeader.snp.right).inset(10)
            make.centerY.equalTo(self.viewHeader.snp.centerY)
        }
        
        // CollectionView
        self.contentView.addSubview(self.collectionView)
        self.collectionView.snp.makeConstraints { (make) in
            make.top.equalTo(self.viewHeader.snp.bottom)
            make.left.equalTo(self.contentView.snp.left).offset(20)
            make.right.equalTo(self.contentView.snp.right).inset(20)
            make.bottom.equalTo(self.contentView.snp.bottom)
        }
        
    }
    
    
    
    // MARK: - Public API
    
    
    
}

