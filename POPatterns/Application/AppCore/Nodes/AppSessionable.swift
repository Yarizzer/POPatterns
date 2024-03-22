//
//  AppNodeable.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 19.03.2024.
//

import Foundation

protocol AppNodeable: AnyObject {
    func inject(with uid: UUID)
}
