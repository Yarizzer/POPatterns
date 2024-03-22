//
//  MainSceneViewModelContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 19.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

enum MainSceneViewModelActionType {
    case setupSubscription
}

protocol MainSceneViewModelType: AnyObject {
    func invoke(action type: MainSceneViewModelActionType)
}
