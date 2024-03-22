//
//  PatternDetailSceneViewModelContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

enum PatternDetailSceneViewModelActionType {
    case setupSubscription
}

protocol PatternDetailSceneViewModelType: AnyObject {
    func invoke(action type: PatternDetailSceneViewModelActionType)
}
