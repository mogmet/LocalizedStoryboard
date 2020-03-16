//
//  UILabel+Extension.swift
//  LocalizedStoryboard
//
//  Created by mogmet on 2020/03/17.
//  Copyright © 2020 mogmet. All rights reserved.
//

import UIKit

extension UILabel {
    @IBInspectable
    private var localizedKey: String? {
        get { fatalError("only set this value") }
        set {
            if let newValue = newValue {
                text = newValue.localized()
            }
        }
    }
}

extension String {
    func localized() -> String? {
        return NSLocalizedString(self, comment: "")
    }
}
