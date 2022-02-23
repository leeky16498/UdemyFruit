//
//  OnBoardingView.swift
//  Fruits
//
//  Created by Kyungyun Lee on 15/02/2022.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK : - properties
    
    var fruits : [Fruit] = fruitsData
    
    // MARK : - body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }//TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
       
    }
}


// MARK : - preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
