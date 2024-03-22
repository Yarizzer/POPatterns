//
//  MainSceneInteractorContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 19.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol MainSceneInteractable: AnyObject {
	func makeRequest(requestType: MainSceneInteractorRequest.RequestType)
}

struct MainSceneInteractorRequest {
	enum RequestType {
		case testRequest
	}
}
