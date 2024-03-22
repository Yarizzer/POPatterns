//
//  PatternDetailSceneViewControllerContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol PatternDetailSceneViewControllerType: AnyObject {
	func update(viewModelDataType: PatternDetailSceneViewControllerViewModel.ViewModelDataType)
}

struct PatternDetailSceneViewControllerViewModel {
	enum ViewModelDataType {
		case initialSetup(with: PatternDetailSceneViewModelType)
        case prepareForInitialAnimation
        case runInitialAnimation
	}
}
