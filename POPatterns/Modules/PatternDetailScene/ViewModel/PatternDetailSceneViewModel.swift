//
//  PatternDetailSceneViewModel.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

final class PatternDetailSceneViewModel { }

extension PatternDetailSceneViewModel: PatternDetailSceneViewModelType {
    func invoke(action type: PatternDetailSceneViewModelActionType) {
        switch type {
        case .setupSubscription:
            #warning("Setup subscription here")
        }
    }
}
