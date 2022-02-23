//
//  ContentView.swift
//  Fruits
//
//  Created by Kyungyun Lee on 15/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowingSettings : Bool = false
    
    var fruits : [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {item in
                    NavigationLink(destination : FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
                .padding(.vertical, 4)
            }//list
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "gear")
            })
            
            )
            .sheet(isPresented : $isShowingSettings) {
                SettingsView()
            }
        }//nav
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
