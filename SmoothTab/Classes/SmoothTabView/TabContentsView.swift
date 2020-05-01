//
//  TabContentsView.swift
//  SmoothTab
//
//  Created by Yervand Saribekyan on 5/1/20.
//  Copyright © 2020 Yervand Saribekyan. All rights reserved.
//

import UIKit

internal final class TabContentsView: UIView {
    private let preferredCollapsedWidth: CGFloat
    private let preferredExpandedWidth: CGFloat

    var widthConstraint: NSLayoutConstraint?
    
    required init(collapsedWidth: CGFloat, expandedWidth: CGFloat) {
        self.preferredCollapsedWidth = collapsedWidth
        self.preferredExpandedWidth = expandedWidth
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.preferredCollapsedWidth = 0
        self.preferredExpandedWidth = 0
        super.init(coder: aDecoder)
    }
    
    func expand() {
        widthConstraint?.constant = preferredExpandedWidth
    }
    
    func collapse() {
        widthConstraint?.constant = preferredCollapsedWidth
    }
}
