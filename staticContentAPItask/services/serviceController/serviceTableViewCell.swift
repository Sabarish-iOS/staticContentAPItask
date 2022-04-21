//
//  serviceTableViewCell.swift
//  staticContentAPItask
//
//  Created by Byot on 26/03/22.
//

import UIKit

class serviceTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    var getListingContentData: listing_Base? = nil

    @IBOutlet weak var dataCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.dataCollectionView.delegate = self
        self.dataCollectionView.dataSource = self
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.scrollDirection = .horizontal
        self.dataCollectionView.collectionViewLayout = flowLayout
        
       
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return getListingContentData?.data?.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "serviceCollectionViewCell", for: indexPath) as! serviceCollectionViewCell
        cell.serviceLabel.numberOfLines = 0
        cell.serviceLabel.lineBreakMode = .byWordWrapping
        cell.serviceLabel.text = getListingContentData?.data![indexPath.row].title ?? ""
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
    }
}
