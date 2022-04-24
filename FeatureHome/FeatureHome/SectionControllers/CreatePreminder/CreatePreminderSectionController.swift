//
//  CreatePreminderSectionController.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/23/22.
//

import UIKit
import IGListKit
import IGListDiffKit


class CreatePreminderSectionController: ListSectionController {
    
    
    // MARK: - Variables
    private var model: CreatePreminder = CreatePreminder()
    
    
    // MARK: - Initialization
    private func customInitCreatePreminderSectionController() {
        
    }
    override init() {
        super.init()
        
        customInitCreatePreminderSectionController()
    }
    
    
    
    // MARK: - Private API
    override func numberOfItems() -> Int {
        return 1
    }

    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 75)
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell: CreatePreminderCollectionViewCell = collectionContext?.dequeueReusableCell(of: CreatePreminderCollectionViewCell.self, for: self, at: index) as! CreatePreminderCollectionViewCell
                
        return cell
    }
    
    override func didUpdate(to object: Any) {
        self.model = object as! CreatePreminder
    }
    
    
    // MARK: - Public API
    
    
    
}

class CreatePreminder: NSObject, ListDiffable {
    
    
    override init() {
        super.init()
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return self.diffIdentifier().isEqual(object?.diffIdentifier())
    }
}
