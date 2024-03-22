//
//  PNLAssistantSceneInteractorContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol PNLAssistantSceneInteractable: AnyObject {
	func makeRequest(requestType: PNLAssistantSceneInteractorRequest.RequestType)
}

struct PNLAssistantSceneInteractorRequest {
	enum RequestType {
		case testRequest
	}
}
