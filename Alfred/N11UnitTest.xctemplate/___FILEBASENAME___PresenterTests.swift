//
//  ___FILENAME___
//  Created by ___FULLUSERNAME___ on ___DATE___
//

import XCTest
@testable import ___PROJECTNAME___

final class ___VARIABLE_productName:identifier___PresenterTests: XCTestCase {

    var presenter: ___VARIABLE_productName:identifier___Presenter!
    var view: MockView!
    var interactor: MockInteractor!
    var builder: MockBuilder!

    override func setUp() {
        super.setUp()
        presenter = ___VARIABLE_productName:identifier___Presenter()
        view = MockView()
        interactor = MockInteractor()
        builder = MockBuilder()

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

// MARK: - Mock Classes

final class MockView: ___VARIABLE_productName:identifier___ViewProtocol { }

final class MockInteractor: ___VARIABLE_productName:identifier___InteractorProtocol {
    weak var presenter: ___VARIABLE_productName:identifier___InteractorOutputProtocol?
}

final class MockBuilder: ___VARIABLE_productName:identifier___ModuleProtocol {
    static func createModule() -> UIViewController { UIViewController() }
}
