//
//  PatternDetailScenePresenter.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

final class PatternDetailScenePresenter {
	init(for view: PatternDetailSceneViewControllerType, service: PatternDetailScenePresenterServiceType) {
		self.viewController = view
		self.service = service
	}
	
	private var viewController: PatternDetailSceneViewControllerType?
	private let service: PatternDetailScenePresenterServiceType
}

extension PatternDetailScenePresenter: PatternDetailScenePresentable {
	func response(responseType: PatternDetailScenePresenterResponse.PatternDetailSceneResponseType) {
		let model = service.model
		
		switch responseType {
		case .initialSetup:                 viewController?.update(viewModelDataType: .initialSetup(with: model))
        case .prepareForInitialAnimation:   viewController?.update(viewModelDataType: .prepareForInitialAnimation)
        case .runInitialAnimation:          viewController?.update(viewModelDataType: .runInitialAnimation)
		case .drainView:                    viewController = nil
		}
	}
}
