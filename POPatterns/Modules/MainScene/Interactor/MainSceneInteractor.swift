//
//  MainSceneInteractor.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 19.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

final class MainSceneInteractor {
	init(withRouter router: MainSceneRoutable, presenter: MainScenePresentable, service: MainSceneInteractorServiceType) {
		self.router = router
		self.presenter = presenter
		self.service = service
	}

	private let router: MainSceneRoutable
	private let presenter: MainScenePresentable
	private let service: MainSceneInteractorServiceType
}

extension MainSceneInteractor: MainSceneInteractable {
	func makeRequest(requestType: MainSceneInteractorRequest.RequestType) {
		switch requestType {
		case .testRequest:
            #warning("test request placeholder to replace")
		}
	}
}

extension MainSceneInteractor: BaseInteractable {
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
