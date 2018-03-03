//
//  SmoothTabItem.swift
//  SmoothTab
//
//  Created by Yervand Saribekyan on 3/1/18.
//  Copyright © 2018 Yervand Saribekyan. All rights reserved.
//

import UIKit

public struct SmoothTabItem {
    public let image: UIImage
    public let selectedImage: UIImage
    public let title: String
    public let tintColor: UIColor

    public init (
        title: String,
        image: UIImage,
        selectedImage: UIImage? = nil,
        tintColor: UIColor
        ) {
        self.title = title
        self.image = image
        self.selectedImage = selectedImage ?? image
        self.tintColor = tintColor
    }
}
