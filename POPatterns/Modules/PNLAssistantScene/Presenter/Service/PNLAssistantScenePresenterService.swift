//
//  PNLAssistantScenePresenterService.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol PNLAssistantScenePresenterServiceType: AnyObject {
	var model: PNLAssistantSceneViewModelType { get }
}

final class PNLAssistantScenePresenterService {
	init(withModel model: PNLAssistantSceneViewModelType) {
		self.viewModel = model
	}
	
	private let viewModel: PNLAssistantSceneViewModelType
}

extension PNLAssistantScenePresenterService: PNLAssistantScenePresenterServiceType {
	var model: PNLAssistantSceneViewModelType { return viewModel }
}
