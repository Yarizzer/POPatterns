//
//  PNLAssistantSceneViewController.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

import UIKit

final class PNLAssistantSceneViewController: BaseViewController<PNLAssistantSceneInteractable> {
	// MARK: View lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
        (interactor as? BaseInteractable)?.lifeCycleDidChanged(event: .sceneDidLoad)
	}
	
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        (interactor as? BaseInteractable)?.lifeCycleDidChanged(event: .didEnterForeground)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        (interactor as? BaseInteractable)?.lifeCycleDidChanged(event: .didEnterBackground)
    }
}

extension PNLAssistantSceneViewController: PNLAssistantSceneViewControllerType {
	func update(viewModelDataType: PNLAssistantSceneViewControllerViewModel.ViewModelDataType) {
		switch viewModelDataType {
		case .initialSetup(let model):
            #warning("Initial setup here")
        case .prepareForInitialAnimation:
            #warning("Preparing for initial animation here")
        case .runInitialAnimation:
            #warning("Preparing for initial animation here")
		}
	}
}

extension PNLAssistantSceneViewController {
	private struct Constants {
        static let alphaValues: (min: CGFloat, max: CGFloat) = (min: 0.0, max: 1.0)
	}
}
