import XCTest
import Foundation

class BaseTest: XCTestCase {
    
    let app = XCUIApplication()
    let loginToMockify = LoginToMockify()
    let mainMenu = MainMenu()
    
    override func setUp() {
        super.setUp()
        app.launch()
        continueAfterFailure = false
    }
    override func tearDown() {
        super.tearDown()
        
        app.terminate()
    }    
}
