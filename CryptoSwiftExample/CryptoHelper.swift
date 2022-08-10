//
//  CryptoHelper.swift
//  CryptoSwiftExample
//
//  Created by Waleed on 10/08/2022.
//

import Foundation
import CryptoSwift

class CryptoHelper {
    
    
    public static func demo (){
        do {
            
            //encrypt
            let aes = try AES(key: "keykeykeykeykeyk", iv: "drowssapdrowssap") // aes128
            let nameDecrypt = try aes.encrypt(Array("Waleed Ahmed".utf8))
            
            print(nameDecrypt)
            
            let encryptedData = Data(nameDecrypt)
            /* Decrypt Data */
            let decryptedBytes = try aes.decrypt(encryptedData.bytes)
            let decryptedData = Data(decryptedBytes)
            
            if let myName = String(data: decryptedData, encoding: .utf8) {
                print(myName)
            } else {
                print("not a valid UTF-8 sequence")
            }
            
            
        } catch { }
    }
}


//[93, 188, 94, 54, 98, 7, 192, 67, 81, 107, 20, 211, 105, 9, 22, 16]


