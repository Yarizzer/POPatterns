//
//  PNLAssistantSceneViewModel.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

final class PNLAssistantSceneViewModel { }

extension PNLAssistantSceneViewModel: PNLAssistantSceneViewModelType {
    func invoke(action type: PNLAssistantSceneViewModelActionType) {
        switch type {
        case .setupSubscription:
            #warning("Setup subscription here")
        }
    }
}
