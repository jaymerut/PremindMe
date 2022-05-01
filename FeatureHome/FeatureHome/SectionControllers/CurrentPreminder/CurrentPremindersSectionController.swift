//
//  CurrentPreminderSectionController.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/22/22.
//

import UIKit
import IGListKit
import IGListDiffKit

protocol CurrentPreminderDelegate {
    func cancelPreminder() -> Void
}

class CurrentPreminderSectionController: ListSectionController {
    
    
    // MARK: - Variables
    private var model: CurrentPreminder = CurrentPreminder();
    
    
    // MARK: - Initialization
    private func customInitCurrentPreminderSectionController() {
        
    }
    override init() {
        super.init()
        
        customInitCurrentPreminderSectionController()
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
    public var delegate: CurrentPreminderDelegate? = nil
    
    override init() {
        super.init()
    }
    init(title: String, delegate: CurrentPreminderDelegate) {
        super.init()
        
        self.title = title
        self.delegate = delegate
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return self.diffIdentifier().isEqual(object?.diffIdentifier())
    }
}
