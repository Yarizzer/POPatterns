//
//  PNLAssistantSceneViewControllerContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol PNLAssistantSceneViewControllerType: AnyObject {
	func update(viewModelDataType: PNLAssistantSceneViewControllerViewModel.ViewModelDataType)
}

struct PNLAssistantSceneViewControllerViewModel {
	enum ViewModelDataType {
		case initialSetup(with: PNLAssistantSceneViewModelType)
        case prepareForInitialAnimation
        case runInitialAnimation
	}
}
