import Foundation
import XCTest

class MainMenu: BasePage {
    
    private lazy var profileButton = app.buttons["Profile"]
    private lazy var  navigationBarLoginToMockify = app.navigationBars["Login To Mockify"]
    
    func clickProfileButton() {
        XCTContext.runActivity(named: "Нажимаем на кнопку Profile") { _ in
            profileButton.tap()
        }
    }
}
