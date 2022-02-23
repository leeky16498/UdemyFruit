//
//  StartButtonView.swift
//  Fruits
//
//  Created by Kyungyun Lee on 15/02/2022.
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK : - properties
    
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    // MARK : - body
   
    
    var body: some View {
        Button(action:  {
            isOnboarding = false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }) // Button
            .accentColor(.white)
    }
}

// MARK : - preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
