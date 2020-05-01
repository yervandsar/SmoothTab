//
//  SmoothTabDefaultOptions.swift
//  SmoothTab
//
//  Created by Yervand Saribekyan on 3/1/18.
//  Copyright © 2018 Yervand Saribekyan. All rights reserved.
//

import UIKit

public struct SmoothTabDefaultOptions {
    init() {}
	// MARK: Tabs parent view options
	static let backgroundColor: UIColor = .white
	static let imageContentMode: UIView.ContentMode = .center
	static let itemsMargin: CGFloat = 15.0
    static let align: SmoothTabOptions.ContentPreferredAlign = .left

	// MARK:  Selected View Options
    static let titleFont: UIFont = .systemFont(ofSize: 14)
    static let titleColor: UIColor = .black
    static let deselectedTitleColor: UIColor = .gray
	static let cornerRadius: CornerRadius = .rounded
	static let borderWidth: CGFloat = 0.0
	static let borderColor: UIColor = .black
	static let innerPadding: CGFloat = 25.0
	static let imageTitleMargin: CGFloat = 15.0

}

public struct SmoothTabShadowDefaultOptions {
    init() {}

    static let color: UIColor = .black
    static let offset: CGSize = .zero
    static let opacity: Float = 0.5
    static let radius: CGFloat = 5

}
