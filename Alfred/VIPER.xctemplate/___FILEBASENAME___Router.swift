//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit.UIViewController

final class ___FILEBASENAME___: ___VARIABLE_productName:identifier___PresenterToRouterProtocol {
    
    weak var viewController: ___VARIABLE_productName:identifier___ViewController?
    
    static func createModule(storyboardName: String, withIdentifier identifier: String) -> ___VARIABLE_productName:identifier___ViewController? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        if let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as? ___VARIABLE_productName:identifier___ViewController {
            let interactor: ___VARIABLE_productName:identifier___PresenterToInteractorProtocol = ___VARIABLE_productName:identifier___Interactor()
            let router: ___VARIABLE_productName:identifier___PresenterToRouterProtocol = ___VARIABLE_productName:identifier___Router()
            let presenter: ___VARIABLE_productName:identifier___ViewToPresenterProtocol & ___VARIABLE_productName:identifier___InteractorToPresenterProtocol = ___VARIABLE_productName:identifier___Presenter(view: viewController, interactor: interactor, router: router)
            interactor.presenter = presenter
            viewController.presenter = presenter
            router.viewController = viewController
            return viewController
        }
        else {
            fatalError("Cant generate this module.")
        }
    }
    
}
