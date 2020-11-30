import XCTest
import Foundation

class TestsForScreenMainMenu: BaseTest {
    
    func testClickProfileButton() {
        mainMenu.clickProfileButton()
        loginToMockify.checknavigationBarLoginToMockify()
    }
}
