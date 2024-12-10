//
//  Text+Extensions.swift
//  TaskManager
//
//  Created by Femer Garcia on 10/12/24.
//

import SwiftUI

extension Text {
    func customFont(_ fontWeight: FontWeight? = .regular, _ size: CGFloat? = nil) -> Text {
        return self.font(.customFont(fontWeight ?? .regular, size ?? 16))
    }
}
