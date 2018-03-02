//
//  SmoothTabDefaultOptions.swift
//  SmothTab
//
//  Created by Yervand Saribekyan on 3/1/18.
//  Copyright © 2018 Yervand Saribekyan. All rights reserved.
//

import UIKit

public struct SmoothTabDefaultOptions {
    init() {}

    static let backgroundColor: UIColor = .white
    static let titleFont: UIFont = .systemFont(ofSize: 14)
    static let titleColor: UIColor = .black
    static let imageContentMode: UIViewContentMode = .center

}

public struct SmoothTabShadowDefaultOptions {
    init() {}

    static let color: UIColor = .black
    static let offset: CGSize = .zero
    static let opacity: Float = 0.5
    static let radius: CGFloat = 5

}
