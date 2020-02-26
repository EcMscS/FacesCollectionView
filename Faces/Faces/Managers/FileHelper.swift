//
//  FileHelper.swift
//  Faces
//
//  Created by Jeffrey Lai on 2/25/20.
//  Copyright © 2020 Jeffrey Lai. All rights reserved.
//

import UIKit

class FileHelper {
    
    static let shared = FileHelper()
    
    private init() {}
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
}
