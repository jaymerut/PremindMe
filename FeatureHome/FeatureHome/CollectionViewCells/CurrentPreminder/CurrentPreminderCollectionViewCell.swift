//
//  CurrentPreminderCollectionViewCell.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/22/22.
//

import UIKit
import SnapKit

class CurrentPreminderCollectionViewCell: UICollectionViewCell {
    
    
    // MARK: - Variables
    private lazy var labelTitle: UILabel = {
        var label = UILabel(frame: .zero)
        
        label.textAlignment = .center
        
        return label
    }()
    
    
    // MARK: - Initialization
    private func customInitCurrentPreminderCollectionViewCell() {
        
        // Setup
        setupCurrentPreminderCollectionViewCell()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customInitCurrentPreminderCollectionViewCell()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customInitCurrentPreminderCollectionViewCell()
    }
    
    
    
    // MARK: - Private API
    private func setupCurrentPreminderCollectionViewCell() {
        
        self.contentView.addSubview(self.labelTitle)
        self.labelTitle.snp.makeConstraints { make in
            make.top.equalTo(self.contentView.snp.top).offset(10)
            make.centerX.equalTo(self.contentView.snp.centerX)
        }
        
        
    }
    
    
    
    // MARK: - Public API
    public func updateCell(model: CurrentPreminder) {
        self.labelTitle.text = model.title
    }
    
    
}
