//
//  PhotosCollectionViewController.swift
//  Photos
//
//  Created by Gene Yoo on 11/3/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    var photos: [Photo]!
    var clickedPhoto : Photo!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.backgroundColor = UIColor.blueColor()

        let api = InstagramAPI()
        api.loadPhotos(didLoadPhotos)
        // FILL ME IN
    }
    /* 
     * IMPLEMENT ANY COLLECTION VIEW DELEGATE METHODS YOU FIND NECESSARY
     * Examples include cellForItemAtIndexPath, numberOfSections, etc.
     */
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (photos == nil) {
            return 0
        }
        return photos.count
    }
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Photo", forIndexPath: indexPath)
        let currPhoto = photos[indexPath.item]
        let imageViewz : UIImageView = UIImageView()
        imageViewz.frame = cell.bounds
        cell.contentView.addSubview(imageViewz)
        cell.backgroundColor = UIColor.whiteColor()
        imageViewz.backgroundColor = UIColor.darkGrayColor()
        loadImageForCell(currPhoto, imageView: imageViewz)
        return cell
    }
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        clickedPhoto = photos[indexPath.item]
        //print(clickedPhoto)
        let destinationVC = EnlargePhotoViewController()
        destinationVC.photo = clickedPhoto
        destinationVC.performSegueWithIdentifier("evil", sender: self)

    }
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//
//        let photoVC = segue.destinationViewController as! EnlargePhotoViewController
//        photoVC.photo = clickedPhoto
//        //photoVC.clickedImage = sender?.subviews[0] as! UIImageView
//        
//    }
    @IBAction func unwindToPhotosCollectionViewController(segue : UIStoryboardSegue) {
        
    }
    
    /* Creates a session from a photo's url to download data to instantiate a UIImage.
       It then sets this as the imageView's image. */
    func loadImageForCell(photo: Photo, imageView: UIImageView) {
        // get image from url and add to imageview
       // imageView.image = UIImage(named: "hangmanCover.gif")
        imageView.image = UIImage(data:NSData(contentsOfURL: NSURL(string: photo.url)!)!)
        
        
        
        
    }
    
    /* Completion handler for API call. DO NOT CHANGE */
    func didLoadPhotos(photos: [Photo]) {
        self.photos = photos
        self.collectionView!.reloadData()
    }
    
}

