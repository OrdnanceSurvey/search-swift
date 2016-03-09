//
//  JsonPerformanceTests.swift
//  Search
//
//  Created by David Haynes on 08/03/2016.
//  Copyright © 2016 Ordnance Survey. All rights reserved.
//

import XCTest
import Nimble
import JSONLib
import JSONCodable
import Gloss
@testable import Search

class JsonPerformanceTests: XCTestCase {

    func testRawNSJSONPerformance() {
        measureBlock {
            let data = NSData(contentsOfURL: Bundle().URLForResource("100-results", withExtension: "json")!)!
            do {
                let _ = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)
            } catch {
                fail("Unexpected error")
            }
        }
    }

    func testJSONLibPerformance() {
        measureBlock {
            let data = NSData(contentsOfURL: Bundle().URLForResource("100-results", withExtension: "json")!)!
            let _ = JSValue.parse(data)
        }
    }

    func testJSONCodablePerformance() {
        measureBlock {
            let data = NSData(contentsOfURL: Bundle().URLForResource("100-results", withExtension: "json")!)!
            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)
                do {
                    let _ = try Response(object: json as! JSONObject)
                } catch {
                    fail("Unexpected error decoding JSON: \(error)")
                }
            } catch {
                fail("Unexpected error parsing JSON")
            }
        }
    }

    func testGlossyPerformance() {
        measureBlock {
            let data = NSData(contentsOfURL: Bundle().URLForResource("100-results", withExtension: "json")!)!
            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data, options: []) as! Gloss.JSON
                let _ = Response(json: json)
            } catch {
                fail("Unexpected error parsing JSON")
            }
        }
    }

    func testNativeSwiftSolution() {
        measureBlock {
            let data = NSData(contentsOfURL: Bundle().URLForResource("100-results", withExtension: "json")!)!
            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data, options: []) as! SomeJSON
                let _ = Response(jsonDict: json)!
            } catch {
                fail("Unexpected error parsing JSON")
            }
        }
    }
    
}
