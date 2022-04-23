//
//  HeaderSectionController.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/13/22.
//

import UIKit
import IGListKit
import IGListDiffKit

class HeaderSectionController: ListSectionController {
    
    
    // MARK: - Variables
    
    
    
    // MARK: - Initialization
    private func customInitHeaderSectionController() {
        
    }
    override init() {
        super.init()
        
        customInitHeaderSectionController()
    }
    
    
    
    // MARK: - Private API
    override func numberOfItems() -> Int {
        return 1
    }

    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 55)
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell: HeaderCollectionViewCell = collectionContext?.dequeueReusableCell(of: HeaderCollectionViewCell.self, for: self, at: index) as! HeaderCollectionViewCell
        
        return cell
    }
    
    override func didUpdate(to object: Any) {
        
    }
    
    // MARK: - Public API
    
    
    
}

class Header: NSObject, ListDiffable {
    
    public var title: String = ""
    
    override init() {
        super.init()
    }
    @objc init(title: String) {
        super.init()
        
        self.title = title
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return self.diffIdentifier().isEqual(object?.diffIdentifier())
    }
}
