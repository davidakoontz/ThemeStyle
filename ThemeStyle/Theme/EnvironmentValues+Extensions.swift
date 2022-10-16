//
//  Env Values + Extensions.swift
//  ThemeStyle
//
//  Created by David on 10/15/22.
//

import SwiftUI


extension EnvironmentValues {

    var theme: ColorTheme {
        get { self[ThemeEnvironmentKey.self] }
        set { self[ThemeEnvironmentKey.self] = newValue }
    }
}

/* Usage
 struct ContentView: View {

     var body: some View {
         Foo()
             .environment(\.theme, customizedStyle)
     }

     var customizedStyle: Theme {
         var theme = Style()
         return style
     }
 }

 struct Foo: View {

     var body: some View {
         Bar()
     }
 }
 
 struct Bar: View {

     var body: some View {
         FooBar()
     }
 }

 struct FooBar: View {

     @Environment(\.style) var style

     var body: some View {
         Text("Content")
             .foregroundColor(style.text.headlineColor)
     }
 }
 */
