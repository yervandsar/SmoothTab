//
//  SmoothTabOptions.swift
//  SmothTab
//
//  Created by Yervand Saribekyan on 3/1/18.
//  Copyright © 2018 Yervand Saribekyan. All rights reserved.
//

import UIKit

public struct SmoothTabOptions {

    public static var `default`: SmoothTabOptions {
        return SmoothTabOptions()
    }

    public init() {}

    public var backgroundColor: UIColor = SmoothTabDefaultOptions.backgroundColor
    public var titleFont: UIFont = SmoothTabDefaultOptions.titleFont
    public var titleColor: UIColor = SmoothTabDefaultOptions.titleColor
    public var imageContentMode: UIViewContentMode = SmoothTabDefaultOptions.imageContentMode

    public var shadow: SmoothTabShadowOptions?

}

public struct SmoothTabShadowOptions {

    public static var `default`: SmoothTabShadowOptions {
        return SmoothTabShadowOptions()
    }

    public init() {}

    public var color: UIColor = SmoothTabShadowDefaultOptions.color
    public var offset: CGSize = SmoothTabShadowDefaultOptions.offset
    public var opacity: Float = SmoothTabShadowDefaultOptions.opacity
    public var radius: CGFloat = SmoothTabShadowDefaultOptions.radius

}
