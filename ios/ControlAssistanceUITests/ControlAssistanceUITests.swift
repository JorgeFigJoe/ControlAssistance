//
//  ControlAssistanceUITests.swift
//  ControlAssistanceUITests
//
//  Created by Jorge  Figueroa on 26/04/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import XCTest

class ControlAssistanceUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
  
  func test_CreateACount(){
    
  }
  
  func testLogin2(){
    
    let app = XCUIApplication()
    app/*@START_MENU_TOKEN@*/.textFields["Ingresa tu usuario"]/*[[".scrollViews.textFields[\"Ingresa tu usuario\"]",".textFields[\"Ingresa tu usuario\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    
    let aKey = app/*@START_MENU_TOKEN@*/.keys["a"]/*[[".keyboards.keys[\"a\"]",".keys[\"a\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    aKey.tap()
    
    let moreKey = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"números\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
    moreKey.tap()
    
    let key = app/*@START_MENU_TOKEN@*/.keys["@"]/*[[".keyboards.keys[\"@\"]",".keys[\"@\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key.tap()
    
    let moreKey2 = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"letras\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
    moreKey2.tap()
    
    let bKey = app/*@START_MENU_TOKEN@*/.keys["b"]/*[[".keyboards.keys[\"b\"]",".keys[\"b\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    bKey.tap()
    moreKey.tap()
    
    let key2 = app/*@START_MENU_TOKEN@*/.keys["."]/*[[".keyboards.keys[\".\"]",".keys[\".\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key2.tap()
    moreKey2.tap()
    
    let cKey = app/*@START_MENU_TOKEN@*/.keys["c"]/*[[".keyboards.keys[\"c\"]",".keys[\"c\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    cKey.tap()
    
    let squareAndPencilScrollView = app/*@START_MENU_TOKEN@*/.scrollViews.containing(.image, identifier:"square.and.pencil").element/*[[".scrollViews.containing(.other, identifier:\"Barra de desplazamiento horizontal, 1 página\").element",".scrollViews.containing(.other, identifier:\"Barra de desplazamiento vertical, 2 páginas\").element",".scrollViews.containing(.button, identifier:\"¿No tienes cuenta? Registrate\").element",".scrollViews.containing(.button, identifier:\"Iniciar Sesión\").element",".scrollViews.containing(.secureTextField, identifier:\"Ingresa tu contraseña\").element",".scrollViews.containing(.textField, identifier:\"Ingresa tu usuario\").element",".scrollViews.containing(.image, identifier:\"square.and.pencil\").element"],[[[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    squareAndPencilScrollView.tap()
    app/*@START_MENU_TOKEN@*/.secureTextFields["Ingresa tu contraseña"]/*[[".scrollViews.secureTextFields[\"Ingresa tu contraseña\"]",".secureTextFields[\"Ingresa tu contraseña\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    moreKey.tap()
    
    let key3 = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key3.tap()
    
    let key4 = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key4.tap()
    
    let key5 = app/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key5.tap()
    
    let key6 = app/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key6.tap()
    squareAndPencilScrollView.tap()
    
    let iniciarSesiNStaticText = app/*@START_MENU_TOKEN@*/.buttons["Iniciar Sesión"]/*[[".scrollViews.buttons[\"Iniciar Sesión\"]",".buttons[\"Iniciar Sesión\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Iniciar Sesión"]
    iniciarSesiNStaticText.tap()
    self.testUpdateLocation()
  }
  
  func testLogin(){
    let app = XCUIApplication()
    app/*@START_MENU_TOKEN@*/.textFields["Ingresa tu usuario"]/*[[".scrollViews.textFields[\"Ingresa tu usuario\"]",".textFields[\"Ingresa tu usuario\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    
    let aKey = app/*@START_MENU_TOKEN@*/.keys["a"]/*[[".keyboards.keys[\"a\"]",".keys[\"a\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    aKey.tap()
    
    let moreKey = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"números\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
    moreKey.tap()
    
    let key = app/*@START_MENU_TOKEN@*/.keys["@"]/*[[".keyboards.keys[\"@\"]",".keys[\"@\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key.tap()
    
    let moreKey2 = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"letras\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
    moreKey2.tap()
    
    let bKey = app/*@START_MENU_TOKEN@*/.keys["b"]/*[[".keyboards.keys[\"b\"]",".keys[\"b\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    bKey.tap()
    moreKey.tap()
    app/*@START_MENU_TOKEN@*/.keys["."]/*[[".keyboards.keys[\".\"]",".keys[\".\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    moreKey2.tap()
    
    let cKey = app/*@START_MENU_TOKEN@*/.keys["c"]/*[[".keyboards.keys[\"c\"]",".keys[\"c\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    cKey.tap()
    app/*@START_MENU_TOKEN@*/.secureTextFields["Ingresa tu contraseña"]/*[[".scrollViews.secureTextFields[\"Ingresa tu contraseña\"]",".secureTextFields[\"Ingresa tu contraseña\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    
    let moreKey3 = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"numbers\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
    moreKey3.tap()
    
    let key2 = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key2.tap()
    app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    
    let key3 = app/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key3.tap()
    app/*@START_MENU_TOKEN@*/.scrollViews.containing(.image, identifier:"square.and.pencil").element/*[[".scrollViews.containing(.other, identifier:\"Horizontal scroll bar, 1 page\").element",".scrollViews.containing(.other, identifier:\"Vertical scroll bar, 1 page\").element",".scrollViews.containing(.button, identifier:\"¿No tienes cuenta? Registrate\").element",".scrollViews.containing(.button, identifier:\"Iniciar Sesión\").element",".scrollViews.containing(.secureTextField, identifier:\"Ingresa tu contraseña\").element",".scrollViews.containing(.textField, identifier:\"Ingresa tu usuario\").element",".scrollViews.containing(.image, identifier:\"square.and.pencil\").element"],[[[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app/*@START_MENU_TOKEN@*/.buttons["Iniciar Sesión"]/*[[".scrollViews.buttons[\"Iniciar Sesión\"]",".buttons[\"Iniciar Sesión\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Iniciar Sesión"].tap()
    self.testUpdateLocation()
  }
  
  func testUpdateLocation(){
    sleep(2)
    let app = XCUIApplication()
    let menuButton = app.buttons["MENU"]
    menuButton.tap()
    app.buttons["Ingresar ubicación"].tap()
    app.alerts.scrollViews.otherElements.buttons["Aceptar"].tap()
    menuButton.tap()
    menuButton.tap()
    sleep(2)
    app.buttons["Cerrar sesión"].tap()
    
  }
  
  func testCreateACount(){
    
    let app = XCUIApplication()
    app/*@START_MENU_TOKEN@*/.buttons["¿No tienes cuenta? Registrate"]/*[[".scrollViews.buttons[\"¿No tienes cuenta? Registrate\"]",".buttons[\"¿No tienes cuenta? Registrate\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["¿No tienes cuenta? Registrate"].tap()
    app/*@START_MENU_TOKEN@*/.textFields["Nuevo usuario"]/*[[".scrollViews.textFields[\"Nuevo usuario\"]",".textFields[\"Nuevo usuario\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    
    let aKey = app/*@START_MENU_TOKEN@*/.keys["a"]/*[[".keyboards.keys[\"a\"]",".keys[\"a\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    aKey.tap()
    
    let moreKey = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"números\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
    moreKey.tap()
    
    let key = app/*@START_MENU_TOKEN@*/.keys["@"]/*[[".keyboards.keys[\"@\"]",".keys[\"@\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key.tap()
    
    let moreKey2 = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"letras\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
    moreKey2.tap()
    
    let bKey = app/*@START_MENU_TOKEN@*/.keys["b"]/*[[".keyboards.keys[\"b\"]",".keys[\"b\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    bKey.tap()
    moreKey.tap()
    app/*@START_MENU_TOKEN@*/.keys["."]/*[[".keyboards.keys[\".\"]",".keys[\".\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    moreKey2.tap()
    
    let cKey = app/*@START_MENU_TOKEN@*/.keys["c"]/*[[".keyboards.keys[\"c\"]",".keys[\"c\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    cKey.tap()
    app/*@START_MENU_TOKEN@*/.secureTextFields["Nueva contraseña"]/*[[".scrollViews.secureTextFields[\"Nueva contraseña\"]",".secureTextFields[\"Nueva contraseña\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    
    let moreKey3 = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"numbers\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
    moreKey3.tap()
    
    let key2 = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key2.tap()
    
    let key3 = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key3.tap()
    
    let key4 = app/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key4.tap()
    
    let key5 = app/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    key5.tap()
    app/*@START_MENU_TOKEN@*/.textFields["Empresa"]/*[[".scrollViews.textFields[\"Empresa\"]",".textFields[\"Empresa\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    cKey.tap()
    
    let tKey = app/*@START_MENU_TOKEN@*/.keys["t"]/*[[".keyboards.keys[\"t\"]",".keys[\"t\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    tKey.tap()
    
    let iKey = app/*@START_MENU_TOKEN@*/.keys["i"]/*[[".keyboards.keys[\"i\"]",".keys[\"i\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    iKey.tap()
    
    let nKey = app/*@START_MENU_TOKEN@*/.keys["n"]/*[[".keyboards.keys[\"n\"]",".keys[\"n\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    nKey.tap()
    app/*@START_MENU_TOKEN@*/.buttons["Crear cuenta"]/*[[".scrollViews.buttons[\"Crear cuenta\"]",".buttons[\"Crear cuenta\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Crear cuenta"].tap()
    
    sleep(1)
    self.testLogin2()
    
  }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
