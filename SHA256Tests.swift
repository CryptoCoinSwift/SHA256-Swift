//
//  SHA256Tests.swift
//  CryptoCoin
//
//  Created by Sjors Provoost on 07-07-14.
//  Copyright (c) 2014 Crypto Coin Swift. All rights reserved.
//

import XCTest
#if os(OSX)
import SHA256Mac
#else
import SHA256iOs
#endif

class SHA256Tests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testHash() {
        let digest: String = SHA256.hexStringDigest("800C28FCA386C7A227600B2FE50B7CAE11EC86D3BF1FBE471BE89827E19D72AA1D")
        
        XCTAssertEqual(digest, "8147786c4d15106333bf278d71dadaf1079ef2d2440a4dde37d747ded5403592", digest)
    }
    
    func testDoubleHash() {
        let digest1: NSData = SHA256.hexStringDigest("800C28FCA386C7A227600B2FE50B7CAE11EC86D3BF1FBE471BE89827E19D72AA1D")
        
       let digest2: String = SHA256.hexStringDigest(digest1)
        
        
        XCTAssertEqual(digest2, "507a5b8dfed0fc6fe8801743720cedec06aa5c6fca72b07c49964492fb98a714", digest2)
    }

}
