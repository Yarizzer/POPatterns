//
//  MainScenePresenter.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 19.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

final class MainScenePresenter {
	init(for view: MainSceneViewControllerType, service: MainScenePresenterServiceType) {
		self.viewController = view
		self.service = service
	}
	
	private var viewController: MainSceneViewControllerType?
	private let service: MainScenePresenterServiceType
}

extension MainScenePresenter: MainScenePresentable {
	func response(responseType: MainScenePresenterResponse.MainSceneResponseType) {
		let model = service.model
		
		switch responseType {
		case .initialSetup:                 viewController?.update(viewModelDataType: .initialSetup(with: model))
        case .prepareForInitialAnimation:   viewController?.update(viewModelDataType: .prepareForInitialAnimation)
        case .runInitialAnimation:          viewController?.update(viewModelDataType: .runInitialAnimation)
		case .drainView:                    viewController = nil
		}
	}
}
