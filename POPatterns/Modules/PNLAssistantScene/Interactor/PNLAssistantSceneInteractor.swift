//
//  PNLAssistantSceneInteractor.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

final class PNLAssistantSceneInteractor {
	init(withRouter router: PNLAssistantSceneRoutable, presenter: PNLAssistantScenePresentable, service: PNLAssistantSceneInteractorServiceType) {
		self.router = router
		self.presenter = presenter
		self.service = service
	}

	private let router: PNLAssistantSceneRoutable
	private let presenter: PNLAssistantScenePresentable
	private let service: PNLAssistantSceneInteractorServiceType
}

extension PNLAssistantSceneInteractor: PNLAssistantSceneInteractable {
	func makeRequest(requestType: PNLAssistantSceneInteractorRequest.RequestType) {
		switch requestType {
		case .testRequest:
            #warning("test request placeholder to replace")
		}
	}
}

extension PNLAssistantSceneInteractor: BaseInteractable {
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
