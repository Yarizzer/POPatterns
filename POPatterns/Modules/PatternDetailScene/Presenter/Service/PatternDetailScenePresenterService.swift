//
//  PatternDetailScenePresenterService.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol PatternDetailScenePresenterServiceType: AnyObject {
	var model: PatternDetailSceneViewModelType { get }
}

final class PatternDetailScenePresenterService {
	init(withModel model: PatternDetailSceneViewModelType) {
		self.viewModel = model
	}
	
	private let viewModel: PatternDetailSceneViewModelType
}

extension PatternDetailScenePresenterService: PatternDetailScenePresenterServiceType {
	var model: PatternDetailSceneViewModelType { return viewModel }
}
