//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Kyungyun Lee on 15/02/2022.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit : Fruit
    let nutrients : [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamin", "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g")  {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.body.bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }//hstack
                }
            }
            
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
    }
}
