//
//  PatternDetailSceneInteractorService.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol PatternDetailSceneInteractorServiceType: AnyObject {
    func performViewModelCall(with action: PatternDetailSceneViewModelActionType)
}

final class PatternDetailSceneInteractorService {
	init(withModel model: PatternDetailSceneViewModelType) {
		self.viewModel = model
	}
	
	private let viewModel: PatternDetailSceneViewModelType
}

extension PatternDetailSceneInteractorService: PatternDetailSceneInteractorServiceType { 
    func performViewModelCall(with action: PatternDetailSceneViewModelActionType) { viewModel.invoke(action: action) }
}
