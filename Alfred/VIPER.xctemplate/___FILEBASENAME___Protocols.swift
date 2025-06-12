//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//


import UIKit.UIViewController


//MARK: - ___VARIABLE_productName:identifier___ViewToPresenterProtocol
protocol ___VARIABLE_productName:identifier___ViewToPresenterProtocol: AnyObject {
    var view: ___VARIABLE_productName:identifier___PresenterToViewProtocol? { get set }
    var interactor: ___VARIABLE_productName:identifier___PresenterToInteractorProtocol? { get set }
    var router: ___VARIABLE_productName:identifier___PresenterToRouterProtocol? { get set }
}

//MARK: - ___VARIABLE_productName:identifier___PresenterToViewProtocol
protocol ___VARIABLE_productName:identifier___PresenterToViewProtocol: AnyObject {
}

//MARK: - ___VARIABLE_productName:identifier___PresenterToRouterProtocol
protocol ___VARIABLE_productName:identifier___PresenterToRouterProtocol: AnyObject {
    var viewController: ___VARIABLE_productName:identifier___ViewController? { get set }
    static func createModule(storyboardName: String, withIdentifier identifier: String) -> ___VARIABLE_productName:identifier___ViewController?
}

//MARK: - ___VARIABLE_productName:identifier___PresenterToInteractorProtocol
protocol ___VARIABLE_productName:identifier___PresenterToInteractorProtocol: AnyObject {
    var presenter: ___VARIABLE_productName:identifier___InteractorToPresenterProtocol? { get set }
}

//MARK: - ___VARIABLE_productName:identifier___InteractorToPresenterProtocol
protocol ___VARIABLE_productName:identifier___InteractorToPresenterProtocol: AnyObject {
}
