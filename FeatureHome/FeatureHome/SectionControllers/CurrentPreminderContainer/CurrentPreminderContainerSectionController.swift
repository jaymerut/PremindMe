//
//  CurrentPreminderContainerSectionController.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/22/22.
//

import UIKit
import IGListKit
import IGListDiffKit
import Core

class CurrentPreminderContainerSectionController: ListSectionController {
    
    
    // MARK: - Variables
    private var model: CurrentPreminderContainer = CurrentPreminderContainer()
    private lazy var adapter: ListAdapter = {
        let adapter = ListAdapter(updater: ListAdapterUpdater.init(), viewController: self.viewController, workingRangeSize: 0)
        adapter.dataSource = self
        
        return adapter
    }()
    
    
    // MARK: - Initialization
    private func customInitCurrentPreminderContainerSectionController() {
        
    }
    override init() {
        super.init()
        
        customInitCurrentPreminderContainerSectionController()
    }
    
    
    
    // MARK: - Private API
    override func numberOfItems() -> Int {
        return 1
    }

    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: CGFloat(50 + (self.model.currentPreminders.count > 0 ? self.model.currentPreminders.count * 55 : 55)))
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell: CurrentPreminderContainerCollectionViewCell = collectionContext?.dequeueReusableCell(of: CurrentPreminderContainerCollectionViewCell.self, for: self, at: index) as! CurrentPreminderContainerCollectionViewCell
        
        self.adapter.collectionView = cell.collectionView
        
        return cell
    }
    
    override func didUpdate(to object: Any) {
        self.model = object as! CurrentPreminderContainer
    }
    
    
    // MARK: - Public API
    
    
    
}

extension CurrentPreminderContainerSectionController: ListAdapterDataSource {

    public func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        self.model.currentPreminders as [ListDiffable]
    }
    
    public func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        
        if object is CurrentPreminder {
            return CurrentPreminderSectionController()
        }
        
        return ListSectionController.init()
    }
    
    public func emptyView(for listAdapter: ListAdapter) -> UIView? {
        
        let label = UILabel.init(frame: .zero)
        label.text = "No Preminders Set"
        label.textAlignment = .center
        label.font = Fonts.andikaNewBasicRegular.size(14.0)
        
        return label
    }

}

class CurrentPreminderContainer: NSObject, ListDiffable {
    
    public var currentPreminders: [CurrentPreminder] = [CurrentPreminder]()
    
    override init() {
        super.init()
    }
    init(currentPreminders: [CurrentPreminder]) {
        super.init()
        
        self.currentPreminders = currentPreminders
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return self.diffIdentifier().isEqual(object?.diffIdentifier())
    }
}
