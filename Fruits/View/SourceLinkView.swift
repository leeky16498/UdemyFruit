//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Kyungyun Lee on 15/02/2022.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "http://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//hstack
            .font(.footnote)
        }//Groupbox
    }
}

//struct SourceLinkView_Previews: PreviewProvider {
//    static var previews: some View {
//        SourceLinkView()
//    }
//}
