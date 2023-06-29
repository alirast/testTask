//
//  BundleExtension.swift
//  testTask1
//
//  Created by N S on 29.06.2023.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else { fatalError("could not find file in bundle") }
        
        guard let data = try? Data(contentsOf: url) else { fatalError("could not load file from bundle") }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else { fatalError("could not decode file from bundle") }
        
        return loadedData
    }
}
