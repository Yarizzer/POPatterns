//
//  PatternDetailSceneInteractor.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

final class PatternDetailSceneInteractor {
	init(withRouter router: PatternDetailSceneRoutable, presenter: PatternDetailScenePresentable, service: PatternDetailSceneInteractorServiceType) {
		self.router = router
		self.presenter = presenter
		self.service = service
	}

	private let router: PatternDetailSceneRoutable
	private let presenter: PatternDetailScenePresentable
	private let service: PatternDetailSceneInteractorServiceType
}

extension PatternDetailSceneInteractor: PatternDetailSceneInteractable {
	func makeRequest(requestType: PatternDetailSceneInteractorRequest.RequestType) {
		switch requestType {
		case .testRequest:
            #warning("test request placeholder to replace")
		}
	}
}

extension PatternDetailSceneInteractor: BaseInteractable {
    func lifeCycleDidChanged(event type: BaseInteractableRequest.SceneLifeCycleEventType) {
        switch type {
        case .sceneDidLoad:
            service.performViewModelCall(with: .setupSubscription)
            presenter.response(responseType: .initialSetup)
            presenter.response(responseType: .prepareForInitialAnimation)
        case .didEnterForeground:   presenter.response(responseType: .runInitialAnimation)
        case .didEnterBackground:   presenter.response(responseType: .prepareForInitialAnimation)
        }
    }
}
