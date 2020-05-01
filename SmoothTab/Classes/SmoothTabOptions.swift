//
//  SmoothTabOptions.swift
//  SmoothTab
//
//  Created by Yervand Saribekyan on 3/1/18.
//  Copyright © 2018 Yervand Saribekyan. All rights reserved.
//

import UIKit

/// For set corner radius to selected view
///
/// - rounded: for calculating rounded view
/// - fixed: fixed corner radius with corner option
public enum CornerRadius {
	case rounded
	case fixed(corner: CGFloat)
}

public struct SmoothTabOptions {

    public enum ContentPreferredAlign {
        case left, center, right
    }
    
    public static var `default`: SmoothTabOptions {
        return SmoothTabOptions()
    }

    public init() {}

	/// Tabs parent view options
	public var backgroundColor: UIColor = SmoothTabDefaultOptions.backgroundColor
	public var imageContentMode: UIView.ContentMode = SmoothTabDefaultOptions.imageContentMode
	public var itemsMargin: CGFloat = SmoothTabDefaultOptions.itemsMargin
	public var shadow: SmoothTabShadowOptions?
    public var align: ContentPreferredAlign = SmoothTabDefaultOptions.align // to which side tab contents should align, if possible

	/// Selected View Options
	public var titleFont: UIFont = SmoothTabDefaultOptions.titleFont
	public var titleColor: UIColor = SmoothTabDefaultOptions.titleColor
    public var deselectedTitleColor: UIColor = SmoothTabDefaultOptions.deselectedTitleColor
	public var cornerRadius: CornerRadius = SmoothTabDefaultOptions.cornerRadius
	public var borderWidth: CGFloat = SmoothTabDefaultOptions.borderWidth
	public var borderColor: UIColor = SmoothTabDefaultOptions.borderColor
	public var innerPadding: CGFloat = SmoothTabDefaultOptions.innerPadding
	public var imageTitleMargin: CGFloat = SmoothTabDefaultOptions.imageTitleMargin

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
