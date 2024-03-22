//
//  PNLAssistantSceneInteractorService.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol PNLAssistantSceneInteractorServiceType: AnyObject {
    func performViewModelCall(with action: PNLAssistantSceneViewModelActionType)
}

final class PNLAssistantSceneInteractorService {
	init(withModel model: PNLAssistantSceneViewModelType) {
		self.viewModel = model
	}
	
	private let viewModel: PNLAssistantSceneViewModelType
}

extension PNLAssistantSceneInteractorService: PNLAssistantSceneInteractorServiceType { 
    func performViewModelCall(with action: PNLAssistantSceneViewModelActionType) { viewModel.invoke(action: action) }
}
