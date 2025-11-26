//
//  ___FILENAME___
//  Created by ___FULLUSERNAME___ on ___DATE___
//

import UIKit

final class ___VARIABLE_productName:identifier___ModuleBuilder: ___VARIABLE_productName:identifier___ModuleProtocol {
    
    static func createModule() -> UIViewController {
        let view = ___VARIABLE_productName:identifier___ViewController()
        let presenter = ___VARIABLE_productName:identifier___Presenter()
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        let builder = ___VARIABLE_productName:identifier___ModuleBuilder()

        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.builder = builder
        interactor.presenter = presenter

        return view
    }
}
