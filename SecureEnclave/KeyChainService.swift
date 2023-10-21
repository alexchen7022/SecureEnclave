//
//  KeyChainService.swift
//  SecureEnclave
//
//  Created by 涼麵 on 2023/10/21.
//

import Foundation
import CryptoKit

public struct KeyChainService{
    static func storeKey(account:String, key:SecureEnclave.P256.Signing.PrivateKey)-> OSStatus {
        let query = [kSecClass: kSecClassGenericPassword,
                     kSecAttrAccount: account,
                     kSecAttrAccessible: kSecAttrAccessibleWhenUnlocked,
                     kSecUseDataProtectionKeychain: true,
                     kSecValueData: key.rawRepresentation] as [String: Any]

        // Add the key data.
        let status = SecItemAdd(query as CFDictionary, nil)
        return status
    }
}

