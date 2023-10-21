//
//  main.swift
//  SecureEnclave
//
//  Created by 涼麵 on 2023/10/21.
//

import Foundation
import Foundation

print("hello")
let generatedKey = try CryptoService.generatePrivateKey()
let service = try CryptoService(privateKey: generatedKey)
let privateKey = service.getPrivateKey()

print(privateKey.rawRepresentation)

