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
    
    public func expectedWidthWhenExpanded(for options: SmoothTabOptions) -> CGFloat {
        return self.title.boundingRect(
            with: CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude),
            options: [.usesLineFragmentOrigin, .usesFontLeading],
            attributes: [NSAttributedString.Key.font: options.titleFont],
            context: nil).width
            + self.image.size.width
            + options.imageTitleMargin
            + options.innerPadding * 2
            + options.borderWidth
            + 2 // small increase to justify possible miss in label width accuracy
    }
    
    public func expectedWidthWhenCollapsed(for options: SmoothTabOptions) -> CGFloat {
        return self.image.size.width
            + options.innerPadding * 2
            + options.borderWidth
    }
}

extension SmoothTabItem: Equatable { }
public func == (lhs: SmoothTabItem, rhs: SmoothTabItem) -> Bool {
    return (lhs.tag == rhs.tag && lhs.title == rhs.title && lhs.image == rhs.image && lhs.selectedImage == rhs.selectedImage)
}
