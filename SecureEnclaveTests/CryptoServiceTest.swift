//
//  CryptoServiceTest.swift
//  SecureEnclaveTests
//
//  Created by 涼麵 on 2023/10/21.
//

import XCTest
//@testable import SecureEnclave
final class CryptoServiceTest: XCTestCase {

    var sut : CryptoService!
    override func setUpWithError() throws {
        let privateKey = try! CryptoService.generatePrivateKey()
        sut = try CryptoService(privateKey: privateKey)
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testExample() throws {
        let privateKey = sut.getPrivateKey()
        XCTAssertNotNil(privateKey.rawRepresentation)
    }

}
