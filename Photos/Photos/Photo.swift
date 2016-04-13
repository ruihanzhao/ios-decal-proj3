//
//  Photo.swift
//  Photos
//
//  Created by Gene Yoo on 11/3/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import Foundation

class Photo {
    /* The number of likes the photo has. */
    var likes : Int!
    /* The string of the url to the photo file. */
    var url : String!
    /* The username of the photographer. */
    var username : String!

    /* Parses a NSDictionary and creates a photo object. */
    init (data: NSDictionary) {
        likes = data.valueForKey("likes")?.valueForKey("count") as! Int
        url = data.valueForKey("images")?.valueForKey("standard_resolution")?.valueForKey("url") as! String!
        username = data.valueForKey("user")?.valueForKey("username") as! String!
        
        // FILL ME IN
        // HINT: use nested .valueForKey() calls, and then cast using 'as! TYPE'
        
    }

}