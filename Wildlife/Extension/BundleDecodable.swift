//
//  BundleDecodable.swift
//  Wildlife
//
//  Created by Ruchir on 8/12/21.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [Animal_Info] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode([Animal_Info].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        return loaded
    }
}
