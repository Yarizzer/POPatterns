//
//  PatternDetailSceneRouter.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 20.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

import UIKit

protocol PatternDetailSceneRoutable: AnyObject {
	static func assembly() -> UIViewController
	func routeTo(scene type: PatternDetailSceneRoutableContractData.PatternDetailSceneRoutableSceneType)
}

final class PatternDetailSceneRouter {
	private func prepareDestinationScene(with type: PatternDetailSceneRoutableContractData.PatternDetailSceneRoutableSceneType) -> UIViewController {
        #warning("Fill routing here")
        
		switch type {
		case .testScene:    print("\(self) \(#function) msg: 'Test scene'")
		}
		
		return UIViewController()
	}
	
	private weak var view: PatternDetailSceneViewController?
}

extension PatternDetailSceneRouter: PatternDetailSceneRoutable {
	static func assembly() -> UIViewController {
		let router = PatternDetailSceneRouter()
		let vc                  = PatternDetailSceneViewController(nibName: String(describing: PatternDetailSceneViewController.self), bundle: Bundle.main)
		let viewModel           = PatternDetailSceneViewModel()
		let presenterService    = PatternDetailScenePresenterService(withModel: viewModel)
		let presenter           = PatternDetailScenePresenter(for: vc, service: presenterService)
		let interactorService   = PatternDetailSceneInteractorService(withModel: viewModel)
		let interactor          = PatternDetailSceneInteractor(withRouter: router, presenter: presenter, service: interactorService)
		
        vc.interactor = interactor
		router.view = vc
		
		guard let view = router.view else {
			fatalError("cannot instantiate \(String(describing: PatternDetailSceneViewController.self))")
		}
		
		return view
	}
	
	func routeTo(scene type: PatternDetailSceneRoutableContractData.PatternDetailSceneRoutableSceneType) {
		let vc = prepareDestinationScene(with: type)
        #warning("uncomment if need to implement custom scene transitioning")
//		vc.modalPresentationStyle = .currentContext
//		vc.transitioningDelegate = view
		self.view?.present(vc, animated: true)
	}
}
