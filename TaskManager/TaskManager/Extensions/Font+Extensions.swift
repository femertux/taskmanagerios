//
//  Font+Extensions.swift
//  TaskManager
//
//  Created by Femer Garcia on 10/12/24.
//

import SwiftUI

enum FontWeight {
    case regular
    case medium
    case bold
}

extension Font {
    static let customFont: (FontWeight, CGFloat) -> Font = { fontType, size in
        switch fontType {
        case .regular:
            Font.custom("Lexend-Regular", size: size)
        case .medium:
            Font.custom("Lexend-Medium", size: size)
        case .bold:
            Font.custom("Lexend-Bold", size: size)
        }
    }
}
