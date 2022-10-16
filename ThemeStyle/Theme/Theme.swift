//
//  Theme.swift
//  ThemeStyle
//
//  Created by David on 10/15/22.
//

import SwiftUI

@propertyWrapper struct Theme<Value> {

    @Environment(\.theme) private var theme
    
    private let keyPath: KeyPath<ColorTheme, Value>

    init(_ keyPath: KeyPath<ColorTheme, Value>) {
        self.keyPath = keyPath
    }

    public var wrappedValue: Value {
        theme[keyPath: keyPath]
    }
}
