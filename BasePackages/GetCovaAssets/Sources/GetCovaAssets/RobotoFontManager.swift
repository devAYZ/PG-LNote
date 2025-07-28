//
//  RobotoFontManager.swift
//  GetCovaAssets
//
//  Created by Ayokunle Fatokimi on 22/01/2025.
//

import SwiftUI

public enum RobotoFontName: String, CaseIterable {
    case italic = "Roboto-Italic"
    case regular = "Roboto-Regular"
    case bold = "Roboto-Bold"
    case boldItalic = "Roboto-BoldItalic"
    case medium = "Roboto-Medium"
    case meduimItalic = "Roboto-MediumItalic"
    case light = "Roboto-Light"
    case lightItalic = "Roboto-LightItalic"
    case thin = "Roboto-Thin"
    case thinItalic = "Roboto-ThinItalic"
}


extension Font {
    public static func roboto(_ font: RobotoFontName = .regular, size: CGFloat = 16) -> Font {
        return .custom(font.rawValue, size: size)
    }
}

public struct RobotoFonts {
    public static func registerFonts() {
        RobotoFontName.allCases.forEach {
            registerFont(bundle: .module, fontName: $0.rawValue, fontExtension: "ttf")
        }
    }
    
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }
        
        var error: Unmanaged<CFError>?
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
}
