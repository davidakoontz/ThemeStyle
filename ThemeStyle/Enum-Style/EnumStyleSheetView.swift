//
//  EnumStyleSheetView.swift
//  
//
//  Created by David on 10/15/22.
//

import SwiftUI


struct EnumStyleSheetView_Previews: PreviewProvider {
    static var previews: some View {
        EnumStylesheetsView()
    }
}

struct EnumStylesheetsView: View {

    var body: some View {
        VStack {
            Text("Headline")
                .foregroundColor(EnumStyle.Text.lineOneColor)
            Text("Subheadline")
                .foregroundColor(EnumStyle.Text.lineTwoColor)
        }
    }
}
