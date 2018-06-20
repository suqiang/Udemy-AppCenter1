//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by 苏强 on 2018/6/20.
//  Copyright © 2018年 Microsoft. All rights reserved.
//

import XCTest

@testable import Minutes


class MinutesTests: XCTestCase {
    
    var entryUnderTest: Entry!

    override func setUp() {
        super.setUp()
        entryUnderTest = Entry("Title", "Content")
    }
    
    override func tearDown() {
        entryUnderTest = nil
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializedData!)
        
        XCTAssertEqual(entry?.title, "Title", "Title does not match")
        XCTAssertEqual(entry?.content, "Content", "Content does not match")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
