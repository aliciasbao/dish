//
//  singleIngredient.swift
//  dish
//
//  Created by Alicia Bao on 8/15/23.
//

import SwiftUI

struct singleIngredient: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Image("pizza") //placeholder for ingredient image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: 250)
                    .clipped()
                    .ignoresSafeArea()
                VStack{
                    Text("Ingredient")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                        .padding(.top, -30)
                    Text("Text blurb")
                }
                .padding(/*@START_MENU_TOKEN@*/.leading, 25.0/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
        }
    }
}

struct singleIngredient_Previews: PreviewProvider {
    static var previews: some View {
        singleIngredient()
    }
}
