//
//  UIButtonExtensions.swift
//  ACKategories
//
//  Created by Jakub Olejník on 06/02/2018.
//  Copyright © 2018 Josef Dolezal. All rights reserved.
//

import UIKit

extension UIButton {
    /// Center title vertically with given space
    public func centerVertically(padding: CGFloat = 6.0) {
        guard let imageSize = imageView?.frame.size, let titleSize = titleLabel?.frame.size else { return }
        let totalHeight = imageSize.height + titleSize.height + padding
        
        imageEdgeInsets = UIEdgeInsets(top: -(totalHeight - imageSize.height), left: 0, bottom: 0, right: -titleSize.width)
        titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width, bottom: -(totalHeight - titleSize.height), right: 0)
    }
}
