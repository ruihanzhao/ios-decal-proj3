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

    @IBOutlet weak var clickedImage: UIImageView! = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //clickedImage.image = UIImage(data:NSData(contentsOfURL: NSURL(string: photo.url)!)!)
        
    }

    // hangmanImage.image = UIImage(named: "hangman1.gif")
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let photosCollectionViewController = segue.destinationViewController as! PhotosCollectionViewController
        
    }

    

}
