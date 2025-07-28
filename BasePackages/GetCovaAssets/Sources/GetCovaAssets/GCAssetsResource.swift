//
//  ResourcesManager.swift
//  GetCovaAssets
//
//  Created by Ayokunle Fatokimi on 20/01/2025.
//

import SwiftUI

public enum GCAssetsResourceFileName: String {
    case appLoader = "app_loader"
}

public enum GCAssetsResourceFileExtension: String {
    case gif = "gif"
    case json = "json"
}

public class GCAssetsResource {
    
    public init() {
    }
    
    public static func getFile(file: GCAssetsResourceFileName, _ ext: GCAssetsResourceFileExtension) -> URL? {
        return Bundle.module.url(forResource: file.rawValue, withExtension: ext.rawValue)
    }
    
    public static func getModuleBundle() -> Bundle {
        return Bundle.module
    }
    
}
