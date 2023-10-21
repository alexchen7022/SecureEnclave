//
//  KeyChainServiceTest.swift
//  SecureEnclaveTests
//
//  Created by 涼麵 on 2023/10/21.
//

import XCTest
//@testable import SecureEnclave
final class KeyChainServiceTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let generatedKey = try CryptoService.generatePrivateKey()
        let actual = KeyChainService.storeKey(account: "AlexTest", key: generatedKey)
        let expected = -34018 as OSStatus
        XCTAssertEqual(expected, actual)
    }
}
