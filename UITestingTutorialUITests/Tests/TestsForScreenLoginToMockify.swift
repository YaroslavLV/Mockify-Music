import XCTest
import Foundation


class TestsForScreenLoginToMockify: BaseTest {
    

    func testSetValidUsernameAndPassword () {
        mainMenu.clickProfileButton()
        loginToMockify.setUsername(username: "CodePro")
        loginToMockify.setPassword(password: "abc123")
        loginToMockify.clickLoginButton()
        loginToMockify.checkStaticTextLoggingIn()
        loginToMockify.noAlertInvalidCredential()
    }
    
    func testNotSetUsernameAndPassword () {
        mainMenu.clickProfileButton()
        loginToMockify.setUsername(username: "")
        loginToMockify.setPassword(password: "")
        loginToMockify.clickLoginButton()
        loginToMockify.showAlertMissingUserOrPassword()
        loginToMockify.clickButtonOkInAlertMissingCredentials()
    }
    
    func testSetInvalidPassword () {
        mainMenu.clickProfileButton()
        loginToMockify.setUsername(username: "CodePro")
        loginToMockify.setPassword(password: "12344")
        loginToMockify.clickLoginButton()
        loginToMockify.showAlertInvalidPassword()
        loginToMockify.clickbuttonOkInAlertInvalidCredentials()
    }
    
    func testSetInvalidUsername () {
        mainMenu.clickProfileButton()
        loginToMockify.setUsername(username: "Cod")
        loginToMockify.setPassword(password: "abc123")
        loginToMockify.clickLoginButton()
        loginToMockify.showAlertInvalidUsername()
        loginToMockify.clickbuttonOkInAlertInvalidCredentials()
    }
}



