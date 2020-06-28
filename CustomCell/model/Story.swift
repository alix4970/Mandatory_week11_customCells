//
//  Story.swift
//  CustomCell
//
//  Created by Ali Al sharefi on 13/03/2020.
//  Copyright © 2020 Ali Al sharefi. All rights reserved.
//

import Foundation
class Story{
    var text: String = ""
    var image: String = ""
    
    init(txt: String, img: String) {
        text = txt
        image = img
    }
    
    func hasImage() -> Bool {
        return image.count > 0 //returns true, if there is some image-name string
    }
}
