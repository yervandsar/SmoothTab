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
    public let tag: String

    public init (
        title: String,
        image: UIImage,
        selectedImage: UIImage? = nil,
        tintColor: UIColor,
        tag: String = ""
        ) {
        self.title = title
        self.image = image
        self.selectedImage = selectedImage ?? image
        self.tintColor = tintColor
        self.tag = (tag != "") ? tag : title
    }
    
    public func expectedWidth(for font: UIFont) -> CGFloat {
        return self.title.boundingRect(
            with: CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude),
            options: [.usesLineFragmentOrigin, .usesFontLeading],
            attributes: [NSAttributedString.Key.font: font],
            context: nil).width + self.image.size.width
    }
}

extension SmoothTabItem: Equatable { }
public func == (lhs: SmoothTabItem, rhs: SmoothTabItem) -> Bool {
    return (lhs.tag == rhs.tag && lhs.title == rhs.title && lhs.image == rhs.image && lhs.selectedImage == rhs.selectedImage)
}
