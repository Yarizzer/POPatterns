//
//  MainScenePresenterContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 19.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol MainScenePresentable: AnyObject {
    func response(responseType: MainScenePresenterResponse.MainSceneResponseType)
}

struct MainScenePresenterResponse {
	enum MainSceneResponseType {
		case initialSetup
        case runInitialAnimation
        case prepareForInitialAnimation
		case drainView
	}
}
