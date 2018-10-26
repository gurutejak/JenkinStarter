//
//  JenkinsStarterTests.swift
//  JenkinsStarterTests
//
//  Created by Teja Ketepalle on 26/10/18.
//  Copyright © 2018 Teja Ketepalle. All rights reserved.
//

import XCTest
@testable import JenkinsStarter

class JenkinsStarterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
    }
    
    let vm = ViewModel()
    
    func testLabelText() {
        let expectedText = "Hello World"
        let actualText = vm.getLabelText()
        XCTAssert(expectedText ==  actualText)
    }
    
    
}
