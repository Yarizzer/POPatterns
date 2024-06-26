//
//  MainSceneRouter.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 19.03.2024.
//  Copyright (c) 2024 Yaroslav Abaturov. All rights reserved.
//

import UIKit

protocol MainSceneRoutable: AnyObject {
	static func assembly() -> UIViewController
	func routeTo(scene type: MainSceneRoutableContractData.MainSceneRoutableSceneType)
}

final class MainSceneRouter {
	private func prepareDestinationScene(with type: MainSceneRoutableContractData.MainSceneRoutableSceneType) -> UIViewController {
        #warning("Fill routing here")
        
		switch type {
		case .testScene:    print("\(self) \(#function) msg: 'Test scene'")
		}
		
		return UIViewController()
	}
	
	private weak var view: MainSceneViewController?
}

extension MainSceneRouter: MainSceneRoutable {
	static func assembly() -> UIViewController {
		let router = MainSceneRouter()
		let vc                  = MainSceneViewController(nibName: String(describing: MainSceneViewController.self), bundle: Bundle.main)
		let viewModel           = MainSceneViewModel()
		let presenterService    = MainScenePresenterService(withModel: viewModel)
		let presenter           = MainScenePresenter(for: vc, service: presenterService)
		let interactorService   = MainSceneInteractorService(withModel: viewModel)
		let interactor          = MainSceneInteractor(withRouter: router, presenter: presenter, service: interactorService)
		
        vc.interactor = interactor
		router.view = vc
		
		guard let view = router.view else {
			fatalError("cannot instantiate \(String(describing: MainSceneViewController.self))")
		}
		
		return view
	}
	
	func routeTo(scene type: MainSceneRoutableContractData.MainSceneRoutableSceneType) {
		let vc = prepareDestinationScene(with: type)
        #warning("uncomment if need to implement custom scene transitioning")
//		vc.modalPresentationStyle = .currentContext
//		vc.transitioningDelegate = view
		self.view?.present(vc, animated: true)
	}
}
