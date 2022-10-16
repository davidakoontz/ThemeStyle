//
//  View+Extensions.swift
//  ThemeStyle
//
//  Created by David on 10/15/22.
//

import SwiftUI


extension View {

    func theme(_ theme: ColorTheme) -> some View {
        self.environment(\.theme, theme)
    }
}
