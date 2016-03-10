//
//  SearchServiceTests.swift
//  Search
//
//  Created by David Haynes on 10/03/2016.
//  Copyright © 2016 Ordnance Survey. All rights reserved.
//

import XCTest
import Nimble
@testable import Search

class SearchServiceTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testTheServiceIsConfiguredCorrectly() {
        let testApiKey = "test-key"
        let service = SearchService(apiKey: testApiKey)
        expect(service.apiKey).to(equal(testApiKey))
    }
}