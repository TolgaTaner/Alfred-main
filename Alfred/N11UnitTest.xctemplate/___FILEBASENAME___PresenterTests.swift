//
//  ___FILENAME___
//  Created by ___FULLUSERNAME___ on ___DATE___
//

import XCTest
@testable import ___PROJECTNAME___

final class ___VARIABLE_productName:identifier___PresenterTests: XCTestCase {

    var presenter: ___VARIABLE_productName:identifier___Presenter!
    var view: Mock___VARIABLE_productName:identifier___View!
    var interactor: Mock___VARIABLE_productName:identifier___Interactor!
    var builder: Mock___VARIABLE_productName:identifier___Builder!

    override func setUp() {
        super.setUp()
        presenter = ___VARIABLE_productName:identifier___Presenter()
        view = Mock___VARIABLE_productName:identifier___View()
        interactor = Mock___VARIABLE_productName:identifier___Interactor()
        builder = Mock___VARIABLE_productName:identifier___Builder()

        presenter.view = view
        presenter.interactor = interactor
        presenter.builder = builder
        interactor.presenter = presenter
    }

    override func tearDown() {
        presenter = nil
        view = nil
        interactor = nil
        builder = nil
        super.tearDown()
    }

    func test_presenterInitializedProperly() {
        XCTAssertNotNil(presenter.view)
        XCTAssertNotNil(presenter.interactor)
        XCTAssertNotNil(presenter.builder)
    }
}

