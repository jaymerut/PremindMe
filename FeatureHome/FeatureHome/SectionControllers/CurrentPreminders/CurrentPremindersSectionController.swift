//
//  CurrentPremindersSectionController.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/22/22.
//

import UIKit
import IGListKit
import IGListDiffKit

class CurrentPremindersSectionController: ListSectionController {
    
    
    // MARK: - Variables
    private var model: CurrentPreminder = CurrentPreminder();
    
    
    // MARK: - Initialization
    private func customInitCurrentPremindersSectionController() {
        
    }
    override init() {
        super.init()
        
        customInitCurrentPremindersSectionController()
    }
    
    
    
    // MARK: - Private API
    override func numberOfItems() -> Int {
        return 1
    }

    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 55)
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell: CurrentPreminderCollectionViewCell = collectionContext?.dequeueReusableCell(of: CurrentPreminderCollectionViewCell.self, for: self, at: index) as! CurrentPreminderCollectionViewCell
        
        cell.updateCell(model: self.model)
        
        return cell
    }
    
    override func didUpdate(to object: Any) {
        self.model = object as! CurrentPreminder
    }
    
    
    // MARK: - Public API
    
    
    
}

class CurrentPreminder: NSObject, ListDiffable {
    
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
