//
//  ContentView.swift
//  ThemeStyle
// https://levelup.gitconnected.com/3-ways-of-styling-swiftui-views-d32c40cbc667
//  Created by David on 10/15/22.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView()
    }

}

struct ContentView: View {
    // Example of View Structure with Env passing
    var body: some View {
        Foo()   // the .env can be moved to the App file
            .environment(\.theme, customizedTheme)
    }
    
    var customizedTheme: ColorTheme {
        let theme = ColorTheme()
        return theme
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

    @Theme(\.text.headlineColor) var headlineColor
    @Theme(\.text.subheadlineColor) var subheadlineColor
    @Theme(\.text.backgroundColor) var bgColor
    
    var body: some View {
        VStack {
            Text("Text with Content [Green]")
                .foregroundColor(headlineColor)
            Text("Sub-headliner [Purple]")
                .foregroundColor(subheadlineColor)
        }
        .padding()
        .background(bgColor)
    }
}


