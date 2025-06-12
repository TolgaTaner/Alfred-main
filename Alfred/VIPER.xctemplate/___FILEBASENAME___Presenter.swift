//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

final class ___FILEBASENAME___ {
    
    var view: ___VARIABLE_productName:identifier___PresenterToViewProtocol?
    var interactor: ___VARIABLE_productName:identifier___PresenterToInteractorProtocol?
    var router: ___VARIABLE_productName:identifier___PresenterToRouterProtocol?
    
    init(view: ___VARIABLE_productName:identifier___PresenterToViewProtocol,
         interactor: ___VARIABLE_productName:identifier___PresenterToInteractorProtocol,
         router: ___VARIABLE_productName:identifier___PresenterToRouterProtocol?) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}


//MARK: - ___VARIABLE_productName:identifier___InteractorToPresenterProtocol
extension ___FILEBASENAME___: ___VARIABLE_productName:identifier___InteractorToPresenterProtocol {
}

//MARK: - ___VARIABLE_productName:identifier___ViewToPresenterProtocol
extension ___FILEBASENAME___: ___VARIABLE_productName:identifier___ViewToPresenterProtocol {
}
