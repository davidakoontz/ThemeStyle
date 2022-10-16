//
//  ParameterPassedContentView.swift
//  ThemeStyle
//
//  Created by David on 10/15/22.
//

import SwiftUI


struct ParameterPassedContentView_Previews: PreviewProvider {

    static var previews: some View {
        // uses the customized style
        StyleSheetsView(style: customizedStyle)
    }

    static var customizedStyle: ColorTheme {
        var style = ColorTheme()
        // overrides the ColorTheme value RED
        style.text.headlineColor = .green
        return style
    }
}

struct StyleSheetsView: View {

    let style: ColorTheme

    var body: some View {
        Group {
            VStack {
                Text("Headline")
                    .foregroundColor(style.text.headlineColor)
                Text("Subheadline")
                    .foregroundColor(style.text.subheadlineColor)
            }
        }
    }
}
