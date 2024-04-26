//
//  extensions.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 26.04.2024.
//

import Foundation

extension Encodable{
    func asDictionary() -> [String:Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        let json = try? JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed) as? [String :Any]
        return json ?? [:]
        
    }
}
