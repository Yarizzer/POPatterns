//
//  MainSceneViewControllerContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 19.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

protocol MainSceneViewControllerType: AnyObject {
	func update(viewModelDataType: MainSceneViewControllerViewModel.ViewModelDataType)
}

struct MainSceneViewControllerViewModel {
	enum ViewModelDataType {
		case initialSetup(with: MainSceneViewModelType)
        case prepareForInitialAnimation
        case runInitialAnimation
	}
}
