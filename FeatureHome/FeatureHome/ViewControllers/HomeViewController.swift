//
//  HomeViewController.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/13/22.
//

import UIKit
import SnapKit
import IGListKit

public class HomeViewController: UIViewController {
    
    
    // MARK: - Variables
    private lazy var sections: [Any] = [Any]()
    
    private lazy var adapter: ListAdapter = {
        let adapter = ListAdapter(updater: ListAdapterUpdater.init(), viewController: self, workingRangeSize: 0)
        
        return adapter
    }()
    private lazy var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout.init()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = .white
        collectionView.alwaysBounceVertical = true
        collectionView.contentInset = .init(top: 10, left: 0, bottom: 10, right: 0)
        
        return collectionView
    }()

    
    // MARK: - Initialization
    private func customInitHomeViewController() {
        
    }
    convenience init() {
        self.init(nibName: nil, bundle: nil)
        
        customInitHomeViewController()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customInitHomeViewController()
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        customInitHomeViewController()
    }
    
    
    
    // MARK: - UIViewController Lifecycle Methods
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        // Setup
        setupHomeViewController()
        
        self.sections = self.createSectionObjects()
        
        self.adapter.performUpdates(animated: true, completion: nil)
        self.adapter.reloadData()
    }
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    
    // MARK: - Private API
    private func setupHomeViewController() {
        
        // Adapter
        self.adapter.collectionView = self.collectionView
        self.adapter.dataSource = self
        
        // CollectionView
        self.view.addSubview(self.collectionView)
        self.collectionView.snp.makeConstraints { (make) in
            make.top.equalTo(self.view.snp.top).offset(50)
            make.left.equalTo(self.view.snp.left).offset(20)
            make.right.equalTo(self.view.snp.right).inset(20)
            make.bottom.equalTo(self.view.snp.bottom).offset(-10)
        }
    }
    
    private func createSectionObjects() -> [Any] {
        var array = [Any]()
        let currentPreminders = [CurrentPreminder.init(title: "Remind Me Now 1!! Remind Me Now 1!! Remind Me Now 1!! Remind Me Now 1!! ", delegate: self), CurrentPreminder.init(title: "Remind Me Now 2!!", delegate: self)]
        
        array.append(CurrentPreminderContainer(currentPreminders: currentPreminders))
        array.append(CreatePreminder())
        
        return array
    }

    
    // MARK: - Public API
    
    
    
}

extension HomeViewController: ListAdapterDataSource {

    public func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        self.sections as! [ListDiffable]
    }
    
    public func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        
        if object is CurrentPreminderContainer {
            return CurrentPreminderContainerSectionController()
        } else if object is CreatePreminder {
            return CreatePreminderSectionController()
        }
        
        return ListSectionController.init()
    }
    
    public func emptyView(for listAdapter: ListAdapter) -> UIView? {
        
        let label = UILabel.init(frame: .zero)
        label.text = ""
        label.textAlignment = .center
        
        return label
    }

}

extension HomeViewController: CurrentPreminderDelegate {
    
    func cancelPreminder() {
        
    }
}
