//
//  SettingLabelView.swift
//  Fruits
//
//  Created by Kyungyun Lee on 15/02/2022.
//

import SwiftUI

struct SettingLabelView: View {
    
    var labelText : String
    var labelImage : String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//struct SettingLabelView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingLabelView()
//    }
//}
