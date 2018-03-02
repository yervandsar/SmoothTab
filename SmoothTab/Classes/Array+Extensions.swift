//
//  Array+Extensions.swift
//  SmothTab
//
//  Created by Yervand Saribekyan on 3/1/18.
//  Copyright © 2018 Yervand Saribekyan. All rights reserved.
//

import Foundation

extension Array {
    subscript (safe index: Int) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
