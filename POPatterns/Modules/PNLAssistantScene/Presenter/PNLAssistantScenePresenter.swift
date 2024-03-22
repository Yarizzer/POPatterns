//
//  PNLAssistantScenePresenter.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

final class PNLAssistantScenePresenter {
	init(for view: PNLAssistantSceneViewControllerType, service: PNLAssistantScenePresenterServiceType) {
		self.viewController = view
		self.service = service
	}
	
	private var viewController: PNLAssistantSceneViewControllerType?
	private let service: PNLAssistantScenePresenterServiceType
}

extension PNLAssistantScenePresenter: PNLAssistantScenePresentable {
	func response(responseType: PNLAssistantScenePresenterResponse.PNLAssistantSceneResponseType) {
		let model = service.model
		
		switch responseType {
		case .initialSetup:                 viewController?.update(viewModelDataType: .initialSetup(with: model))
        case .prepareForInitialAnimation:   viewController?.update(viewModelDataType: .prepareForInitialAnimation)
        case .runInitialAnimation:          viewController?.update(viewModelDataType: .runInitialAnimation)
		case .drainView:                    viewController = nil
		}
	}
}
