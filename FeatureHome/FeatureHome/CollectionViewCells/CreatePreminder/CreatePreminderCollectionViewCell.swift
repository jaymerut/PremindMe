//
//  CreatePreminderCollectionViewCell.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/23/22.
//

import UIKit
import Core

class CreatePreminderCollectionViewCell: UICollectionViewCell {
    
    
    // MARK: - Variables
    private lazy var buttonCreate: UIButton = {
        var button = UIButton(type: .custom)
        
        button.addTarget(self, action: #selector(buttonCreate_TouchUpInside), for: .touchUpInside)
        button.layer.cornerRadius = 20.0
        button.backgroundColor = UIColor(rgb: 0x50C878)
        button.setTitle("Create Preminder", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = Fonts.andikaNewBasicBold.size(18.0)
        
        return button
    }()
    
    
    // MARK: - Initialization
    private func customInitCreatePreminderCollectionViewCell() {
        
        // Setup
        setupCreatePreminderCollectionViewCell()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customInitCreatePreminderCollectionViewCell()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customInitCreatePreminderCollectionViewCell()
    }
    
    
    
    // MARK: - Private API
    private func setupCreatePreminderCollectionViewCell() {
        
        self.contentView.addSubview(self.buttonCreate)
        self.buttonCreate.snp.makeConstraints { make in
            make.left.equalTo(self.contentView.snp.left)
            make.right.equalTo(self.contentView.snp.right)
            make.centerY.equalTo(self.contentView.snp.centerY)
            make.height.equalTo(55)
        }
        
        
    }
    
    // MARK: UIResponders
    @objc private func buttonCreate_TouchUpInside() {
        
    }
    
    
    // MARK: - Public API
    
    
    
}
