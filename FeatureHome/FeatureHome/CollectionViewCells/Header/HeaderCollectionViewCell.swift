//
//  HeaderCollectionViewCell.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/13/22.
//

import UIKit
import SnapKit

class HeaderCollectionViewCell: UICollectionViewCell {
    
    
    // MARK: - Variables
    public var title: String = ""
    
    private lazy var labelTitle: UILabel = {
        var label = UILabel(frame: .zero)
        
        label.textAlignment = .center
        
        return label
    }()
    
    
    // MARK: - Initialization
    private func customInitHeaderCollectionViewCell() {
        
        // Setup
        setupHeaderCollectionViewCell()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customInitHeaderCollectionViewCell()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customInitHeaderCollectionViewCell()
    }
    
    
    
    // MARK: - Private API
    private func setupHeaderCollectionViewCell() {
        
        self.contentView.addSubview(self.labelTitle)
        self.labelTitle.snp.makeConstraints { make in
            make.top.equalTo(self.contentView.snp.top).offset(10)
            make.centerX.equalTo(self.contentView.snp.centerX)
        }
        
    }
    
    
    
    // MARK: - Public API
    public func updateCell(model: Header) {
        self.labelTitle.text = model.title
    }
    
}
