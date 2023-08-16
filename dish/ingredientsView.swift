//
//  ingredientsView.swift
//  dish
//
//  Created by Alicia Bao on 8/15/23.
//

import SwiftUI

struct ingredientsView: View {
    var body: some View {
        ZStack {
            Color(red: 0.9569, green: 0.9451, blue: 0.8824) /*cream*/
            //button pressed, make some variable == "pizza"
            //if var  == "pizza", open this screen, etc.
            VStack(alignment: .leading){
                Image("pizza")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: 250, alignment: .bottom)
                    .clipped()
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    Text("Pizza Dough")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 9.0)
                        .padding(.top, 35)
                        .padding(.top, -30.0)
                    Text("All purpose flour")
                    Text("Instant yeast")
                    Text("Sugar")
                    Text("Salt")
                    Text("Olive oil")
                    Text("Warm water")
                }
                .padding(.leading, 25.0)
                
                
                Spacer()
                
            }
        }
        .ignoresSafeArea()
    }
}

struct ingredientsView_Previews: PreviewProvider {
    static var previews: some View {
        ingredientsView()
    }
}
