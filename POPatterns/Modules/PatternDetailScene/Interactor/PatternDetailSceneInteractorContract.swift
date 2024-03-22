//
//  PatternDetailSceneInteractorContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol PatternDetailSceneInteractable: AnyObject {
	func makeRequest(requestType: PatternDetailSceneInteractorRequest.RequestType)
}

struct PatternDetailSceneInteractorRequest {
	enum RequestType {
		case testRequest
	}
}
