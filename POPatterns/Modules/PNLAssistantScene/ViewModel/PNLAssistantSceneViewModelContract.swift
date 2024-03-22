//
//  PNLAssistantSceneViewModelContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

enum PNLAssistantSceneViewModelActionType {
    case setupSubscription
}

protocol PNLAssistantSceneViewModelType: AnyObject {
    func invoke(action type: PNLAssistantSceneViewModelActionType)
}
