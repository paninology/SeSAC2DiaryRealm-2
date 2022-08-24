//
//  ImageSearchView.swift
//  SeSAC2DiaryRealm
//
//  Created by jack on 2022/08/21.
//

import UIKit

class ImageSearchView: BaseView {
     
    let collectionView: UICollectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: imageCollectionViewLayout())
        return view
    }()
    
//    let cancelButton: UIButton = {
//        let view = UIButton()
//        view.backgroundColor = .brown
//        view.setTitle("cancel", for: .normal)
//        return view
//    }()
//
//    let saveButton: UIButton = {
//        let view = UIButton()
//        view.backgroundColor = .brown
//        view.setTitle("save", for: .normal)
//        return view
//    }()
     
    override func configureUI() {
  
        [collectionView].forEach {self.addSubview($0) }
    }
    
    override func setConstraints() {
        collectionView.snp.makeConstraints { make in
            make.edges.equalTo(self.safeAreaLayoutGuide)
        }
        
//        saveButton.snp.makeConstraints { make in
//            make.top.equalTo(8)
//            make.trailing.equalTo(-8)
//            make.width.height.equalTo(44)
//        }
//        cancelButton.snp.makeConstraints { make in
//            make.top.leading.equalTo(8)
//            make.width.height.equalTo(44)
//        }
    }
    
    static func imageCollectionViewLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        let deviceWidth: CGFloat = UIScreen.main.bounds.width
        let itemWidth: CGFloat = deviceWidth / 2
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        layout.scrollDirection = .vertical
        return layout
    }
}

