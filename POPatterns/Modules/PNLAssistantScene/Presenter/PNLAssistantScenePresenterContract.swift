//
//  PNLAssistantScenePresenterContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol PNLAssistantScenePresentable: AnyObject {
    func response(responseType: PNLAssistantScenePresenterResponse.PNLAssistantSceneResponseType)
}

struct PNLAssistantScenePresenterResponse {
	enum PNLAssistantSceneResponseType {
		case initialSetup
        case runInitialAnimation
        case prepareForInitialAnimation
		case drainView
	}
}
