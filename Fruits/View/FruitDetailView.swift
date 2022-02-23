//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Kyungyun Lee on 15/02/2022.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    
    var fruit : Fruit
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment:. center, spacing: 20){
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //SUBHEADLINE
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth : 640, alignment: .center)
                }//Vstack
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }//scroll
            .edgesIgnoringSafeArea(.top)
        }//nav
    }
}

//struct FruitDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        FruitDetailView()
//    }
//}
