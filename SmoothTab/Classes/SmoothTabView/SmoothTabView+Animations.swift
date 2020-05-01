//
//  SmoothTabView+Animations.swift
//  SmoothTab
//
//  Created by Yervand Saribekyan on 5/1/20.
//  Copyright © 2020 Yervand Saribekyan. All rights reserved.
//

import UIKit

internal extension SmoothTabView {
    func transition(from fromIndex: Int, to toIndex: Int, animated: Bool = true) {
        let actions = {
            self.layoutIfNeeded()
            self.stackView.setNeedsLayout()
            self.stackView.layoutIfNeeded()
            self.moveHighlighterView(toItemAt: toIndex)
        }
        
        if animated {
            UIView.animate(
                withDuration: SwitchAnimationDuration,
                delay: 0,
                usingSpringWithDamping: 0.7,
                initialSpringVelocity: 3,
                options: [],
                animations: actions,
                completion: nil
            )
        } else {
            actions()
        }
    }
    
    func viewsFitScreen() -> Bool {
        let tabWidths = items.map({ $0.expectedWidthWhenExpanded(for: options) + options.innerPadding * 2 + options.imageTitleMargin })
        return tabWidths.reduce(0, +) <= UIScreen.main.bounds.width
    }

    func moveHighlighterView(toItemAt toIndex: Int) {
        guard itemsViews.count > toIndex else {
            return
        }

        // offset for first item
        let offsetForFirstItem: CGFloat = toIndex == 0 ? -HighlighterViewOffScreenOffset : 0

        // offset for last item
        let offsetForLastItem: CGFloat = toIndex == itemsViews.count - 1 ? HighlighterViewOffScreenOffset : 0
        
        if viewsFitScreen() == true && items.count == 2 { // if only 2 tabs, selection can take half of screen
            let halfScreen = bounds.size.width / 2
            selectedView.frame.origin.x = halfScreen * CGFloat(toIndex) + offsetForFirstItem
            selectedView.frame.size.width = halfScreen + offsetForLastItem - offsetForFirstItem
        } else {
            let toView = itemsViews[toIndex]
            let point = convert(toView.frame.origin, to: self)
            selectedView.frame.origin.x = point.x + offsetForFirstItem
            selectedView.frame.size.width = toView.frame.size.width + offsetForLastItem - offsetForFirstItem
        }
        selectedView.backgroundColor = items[toIndex].tintColor

        var newOffset: CGPoint?

        if selectedView.frame.origin.x + selectedView.frame.size.width - scrollView.contentOffset.x > bounds.size.width {
            let distance = selectedView.frame.origin.x - scrollView.contentOffset.x
            let showed = bounds.size.width - distance
            let mustShow = selectedView.frame.size.width - showed
            let newX = scrollView.contentOffset.x + mustShow - ( toIndex != itemsViews.count - 1 ? 0 : HighlighterViewOffScreenOffset )
            newOffset = CGPoint(x: newX, y: 0)
        }

        if selectedView.frame.origin.x < scrollView.contentOffset.x {
            newOffset = CGPoint(x: selectedView.frame.origin.x + ( toIndex != 0 ? 0 : HighlighterViewOffScreenOffset ), y: 0)
        }

        if let offset = newOffset {
            scrollView.setContentOffset(offset, animated: true)
        }
    }
}
