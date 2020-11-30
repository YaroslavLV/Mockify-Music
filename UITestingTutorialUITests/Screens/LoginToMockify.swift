import XCTest
import Foundation

class LoginToMockify: BasePage {
    
    private lazy var  usernameTextField = app.textFields["Username"]
    private lazy var  passwordSecureTextFields = app.secureTextFields["Password"]
    private lazy var  loginButton = app.buttons["Login"]
    private lazy var  navigationBarLoginToMockify = app.navigationBars["Login To Mockify"]
    private lazy var  alertMissingCredentials = app.alerts["Missing Credentials"]
    private lazy var  staticTextLiggingIn = app.staticTexts["Logging In"]
    private lazy var  alertInvalidPassword = app.alerts["Invalid Credentials"]
    private lazy var  staticTextInvalidPassword = app.staticTexts["Invalid Password"]
    private lazy var  staticTextInvalidUsername = app.staticTexts["Invalid User Name"]
    private lazy var  staticTextMissingUserOrPassword = app.staticTexts["Missing User Name Or Password"]
    private lazy var  navigationBarMockifyMusic = app.navigationBars["Mockify Music"]
    private lazy var  buttonOkInAlertMissingCredentials = app.alerts["Missing Credentials"].buttons["Ok"]
    private lazy var  buttonOkInAlertInvalidCredentials = app.alerts["Invalid Credentials"].buttons["Ok"]
    
    func clickLoginButton() {
        XCTContext.runActivity(named: "Нажимаем на кнопку Login") { _ in
            loginButton.tap()
        }
    }
    func checknavigationBarLoginToMockify(){
        XCTContext.runActivity(named: "Проверяем наличие бара Login To Mockify") { _ in
            XCTAssertTrue(navigationBarLoginToMockify.exists)
        }
    }
    func checkStaticTextLoggingIn () {
        XCTContext.runActivity(named: "Проверяем наличие текста Logging In после ввода логина и пароля") { _ in
            XCTAssertTrue(staticTextLiggingIn.exists)
        }
    }
    
    func setUsername(username: String) {
        XCTContext.runActivity(named: " Вводим имя пользователя") { _ in
            usernameTextField.tap()
            usernameTextField.typeText(username)
        }
    }
    
    func setPassword(password: String) {
        XCTContext.runActivity(named: " Вводим пароль пользовател") { _ in
            passwordSecureTextFields.tap()
            passwordSecureTextFields.typeText(password)
        }
    }
    
    func showAlertMissingUserOrPassword() {
        
        XCTContext.runActivity(named: "Проверяем наличие аллерта, что не введен логин или пароль") { _ in
            XCTAssertTrue(alertMissingCredentials.exists)
            XCTAssertTrue(staticTextMissingUserOrPassword.exists)
        }
    }
    
    
    func showAlertInvalidPassword() {
        XCTContext.runActivity(named: "Проверяем наличие аллерта Что введен неверный пароль") { _ in
            XCTAssertTrue(alertInvalidPassword.exists)
            XCTAssertTrue(staticTextInvalidPassword.exists)
        }
        
    }
    func showAlertInvalidUsername() {
        XCTContext.runActivity(named: "Проверяем наличие аллерта Что введен неверный логин") { _ in
            XCTAssertTrue(alertInvalidPassword.exists)
            XCTAssertTrue(staticTextInvalidUsername.exists)
        }
        
    }
    func chowNavBarMockifyMusic () {
        XCTContext.runActivity(named: "Проверяем наличие навбара Mockify Music") { _ in
            XCTAssertTrue(navigationBarMockifyMusic.exists)
        }
                
    }
    
    func clickButtonOkInAlertMissingCredentials () {
        
        XCTContext.runActivity(named: "Нажимаем Ок на алерте Missing Credentials") { _ in
            buttonOkInAlertMissingCredentials.tap()
        }
    }
    func clickbuttonOkInAlertInvalidCredentials () {
        
        XCTContext.runActivity(named: "Нажимаем Ок на алерте Invalid Credentials") { _ in
            buttonOkInAlertInvalidCredentials.tap()
        }
    }
    
    
    func noAlertInvalidCredential () {
        XCTContext.runActivity(named: "Проверяем отсутствие алерта Invalid Credentials") { _ in
            XCTAssertFalse(alertInvalidPassword.exists)
        }
    }
}


