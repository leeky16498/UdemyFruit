//
//  SettingsView.swift
//  Fruits
//
//  Created by Kyungyun Lee on 15/02/2022.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    //setion1
                    GroupBox(label:
                        SettingLabelView(labelText: "Fractus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment:. center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width : 80, height : 80)
                                .cornerRadius(8)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients.")
                                .font(.footnote)
                        }
                    }
                    
                    //section2
                    
                    
                }// vstack
            }//scroll
            .navigationTitle("Settings")
            .navigationBarItems(trailing:
                                    Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            })
            
            )
            .padding()
        }//nav
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
