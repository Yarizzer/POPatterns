//
//  MSTopViewButton.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 19.03.2024.
//

import UIKit

final class MSTopViewButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = frame.height / 2
        self.layer.masksToBounds = true
    }
}
