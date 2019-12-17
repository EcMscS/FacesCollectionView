//
//  MainVC.swift
//  Faces
//
//  Created by Jeffrey Lai on 12/16/19.
//  Copyright © 2019 Jeffrey Lai. All rights reserved.
//

import UIKit

class MainVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavBar()
        setupCollectionView()
    }
    
    func setupNavBar() {
        title = "Faces"
        navigationController?.navigationBar.tintColor = .systemBlue
        navigationController?.navigationBar.barTintColor = .systemRed
        navigationController?.navigationBar.isTranslucent = true
        //navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupCollectionView() {
    
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.backgroundColor = .systemBackground
        collectionView.register(FaceCollectionViewCell.self, forCellWithReuseIdentifier: "PersonCell")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PersonCell", for: indexPath) as? FaceCollectionViewCell else {
            fatalError("Unabele to dequeue FaceCollectionViewCell")
        }
        
        cell.backgroundColor = .systemTeal
        return cell
    }
    
}
