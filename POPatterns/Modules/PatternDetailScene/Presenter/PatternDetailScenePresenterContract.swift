//
//  PatternDetailScenePresenterContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol PatternDetailScenePresentable: AnyObject {
    func response(responseType: PatternDetailScenePresenterResponse.PatternDetailSceneResponseType)
}

struct PatternDetailScenePresenterResponse {
	enum PatternDetailSceneResponseType {
		case initialSetup
        case runInitialAnimation
        case prepareForInitialAnimation
		case drainView
	}
}
