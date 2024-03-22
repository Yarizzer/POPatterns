//
//  PNLAssistantSceneRouter.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

import UIKit

protocol PNLAssistantSceneRoutable: AnyObject {
	static func assembly() -> UIViewController
	func routeTo(scene type: PNLAssistantSceneRoutableContractData.PNLAssistantSceneRoutableSceneType)
}

final class PNLAssistantSceneRouter {
	private func prepareDestinationScene(with type: PNLAssistantSceneRoutableContractData.PNLAssistantSceneRoutableSceneType) -> UIViewController {
        #warning("Fill routing here")
        
		switch type {
		case .testScene:    print("\(self) \(#function) msg: 'Test scene'")
		}
		
		return UIViewController()
	}
	
	private weak var view: PNLAssistantSceneViewController?
}

extension PNLAssistantSceneRouter: PNLAssistantSceneRoutable {
	static func assembly() -> UIViewController {
		let router = PNLAssistantSceneRouter()
		let vc                  = PNLAssistantSceneViewController(nibName: String(describing: PNLAssistantSceneViewController.self), bundle: Bundle.main)
		let viewModel           = PNLAssistantSceneViewModel()
		let presenterService    = PNLAssistantScenePresenterService(withModel: viewModel)
		let presenter           = PNLAssistantScenePresenter(for: vc, service: presenterService)
		let interactorService   = PNLAssistantSceneInteractorService(withModel: viewModel)
		let interactor          = PNLAssistantSceneInteractor(withRouter: router, presenter: presenter, service: interactorService)
		
        vc.interactor = interactor
		router.view = vc
		
		guard let view = router.view else {
			fatalError("cannot instantiate \(String(describing: PNLAssistantSceneViewController.self))")
		}
		
		return view
	}
	
	func routeTo(scene type: PNLAssistantSceneRoutableContractData.PNLAssistantSceneRoutableSceneType) {
		let vc = prepareDestinationScene(with: type)
        #warning("uncomment if need to implement custom scene transitioning")
//		vc.modalPresentationStyle = .currentContext
//		vc.transitioningDelegate = view
		self.view?.present(vc, animated: true)
	}
}
