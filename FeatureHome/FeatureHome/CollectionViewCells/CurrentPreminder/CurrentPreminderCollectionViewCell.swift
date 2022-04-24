//
//  CurrentPreminderCollectionViewCell.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/22/22.
//

import UIKit
import SnapKit
import Core

class CurrentPreminderCollectionViewCell: UICollectionViewCell {
    
    
    // MARK: - Variables
    private lazy var labelTitle: UILabel = {
        var label = UILabel(frame: .zero)
        
        label.textAlignment = .left
        label.font = Fonts.andikaNewBasicRegular.size(16.0)
        
        return label
    }()
    private lazy var buttonEdit: UIButton = {
        var button = UIButton(type: .custom)
        
        button.addTarget(self, action: #selector(buttonEdit_TouchUpInside), for: .touchUpInside)
        button.layer.cornerRadius = 5.0
        button.backgroundColor = UIColor(rgb: 0x808080)
        button.setTitle("Edit", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = Fonts.andikaNewBasicRegular.size(16.0)
        
        return button
    }()
    private lazy var buttonCancel: UIButton = {
        var button = UIButton(type: .custom)
        
        button.addTarget(self, action: #selector(buttonCancel_TouchUpInside), for: .touchUpInside)
        button.layer.cornerRadius = 5.0
        button.backgroundColor = UIColor(rgb: 0xD70040)
        button.setTitle("Cancel", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = Fonts.andikaNewBasicRegular.size(16.0)
        
        return button
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
        
        self.contentView.addSubview(self.buttonCancel)
        self.buttonCancel.snp.makeConstraints { make in
            make.right.equalTo(self.contentView.snp.right).inset(20)
            make.centerY.equalTo(self.contentView.snp.centerY)
            make.height.equalTo(30)
            make.width.equalTo(80)
        }
        self.contentView.addSubview(self.buttonEdit)
        self.buttonEdit.snp.makeConstraints { make in
            make.right.equalTo(self.buttonCancel.snp.left).offset(-10)
            make.centerY.equalTo(self.contentView.snp.centerY)
            make.height.equalTo(30)
            make.width.equalTo(60)
        }
        self.contentView.addSubview(self.labelTitle)
        self.labelTitle.snp.makeConstraints { make in
            make.left.equalTo(self.contentView.snp.left).offset(20)
            make.right.equalTo(self.buttonEdit.snp.left).offset(-10)
            make.centerY.equalTo(self.contentView.snp.centerY)
        }
        
        
    }
    
    // MARK: UIResponders
    @objc private func buttonEdit_TouchUpInside() {
        
    }
    
    @objc private func buttonCancel_TouchUpInside() {
        
    }
    
    
    // MARK: - Public API
    public func updateCell(model: CurrentPreminder) {
        self.labelTitle.text = model.title
    }
    
    
}
