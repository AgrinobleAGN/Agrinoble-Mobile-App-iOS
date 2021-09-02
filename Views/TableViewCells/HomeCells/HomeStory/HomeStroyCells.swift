//
//  HomeStroyCells.swift
//  WoWonderiOS
//
//  Created by Abdul Moid on 10/06/2021.
//  Copyright © 2021 clines329. All rights reserved.
//

import UIKit

class HomeStroyCells: UITableViewCell {

    var vc:HomeVC?
    var stories = [GetStoriesModel.UserDataElement]()
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "StoryCells", bundle: nil), forCellWithReuseIdentifier: "StoryCells")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension HomeStroyCells: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCells", for: indexPath) as! StoryCells
        if indexPath.row == 0
        {
            let url = URL(string: UserData.getImage() ?? "")
            cell.userProfileImageView.sd_setImage(with: url, placeholderImage: #imageLiteral(resourceName: "no-avatar"), options: [], completed: nil)
            cell.usernameLabel.text = "Add Story"
            cell.plusImageView.isHidden = false
        }else {
            let index = stories[indexPath.row - 1]
            let url = URL(string: index.avatar!)
            cell.userProfileImageView.sd_setImage(with: url, placeholderImage: #imageLiteral(resourceName: "no-avatar"), options: [], completed: nil)
            cell.usernameLabel.text = index.name
            cell.plusImageView.isHidden = true
        }
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            self.vc?.showStoriesLog()
        }else {
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 120, height: collectionView.frame.height - 30)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 15, left: 15, bottom: 15, right: 15)
    }
}

