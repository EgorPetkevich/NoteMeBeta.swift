//
//  ExtentionUIButton.swift
//  NoteMeBeta
//
//  Created by George Popkich on 19.10.23.
//

import UIKit
extension UIButton {
    func underline() {
        guard let text = self.titleLabel?.text else { return }

        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: text.count))

        self.setAttributedTitle(attributedString, for: .normal)
    }
}
