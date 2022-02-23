//
//  CardView.swift
//  Fruits
//
//  Created by Kyungyun Lee on 15/02/2022.
//

import SwiftUI

struct FruitCardView: View {
    
    let fruit : Fruit
    // MARK : - Properties
    @State var isAnimating : Bool = false
    
    // MARK : - body
    
    var body: some View {
        ZStack {
            VStack(spacing: 10){
                //Fruit : Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                //Fruit : Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //Fruit : Headline
                Text(fruit.headline)
                    .font(.title2)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth : 480)
                //Button : Start
                StartButtonView()
                    .padding()
            } // VStack
        }//ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth : 0, maxWidth : .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}
// MARK : - preview
//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        FruitCardView()
//            .previewLayout(.fixed(width: 320, height: 640))
//    }
//}
