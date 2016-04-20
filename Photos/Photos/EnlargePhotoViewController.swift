//
//  EnlargePhotoViewController.swift
//  Photos
//
//  Created by Ruihan Zhao on 4/12/16.
//  Copyright © 2016 iOS DeCal. All rights reserved.
//

import UIKit

class EnlargePhotoViewController: UIViewController {
    var photo : Photo!
    @IBOutlet weak var likesLabel: UILabel!

    @IBOutlet weak var pressLike: UIButton!
    
    @IBOutlet weak var statsLabel: UILabel!
    

    
    @IBOutlet weak var clickedImage: UIImageView! = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        clickedImage.image = UIImage(data:NSData(contentsOfURL: NSURL(string: photo.url)!)!)
        statsLabel.text = "Username: " + photo.username
        addTargets()
        likesLabel.text = "Likes: \(photo.likes)"

    }
    func reload() {
        likesLabel.text = "Likes: \(photo.likes)"

    }
    func addTargets() {
        pressLike.addTarget(self, action: "incrLike", forControlEvents: .TouchUpInside)
    }
    func incrLike() {
        photo.likes! += 1;
        reload();
    }

    // hangmanImage.image = UIImage(named: "hangman1.gif")
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let photosCollectionViewController = segue.destinationViewController as! PhotosCollectionViewController
//        
//    }

    

}
