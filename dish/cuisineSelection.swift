//
//  cuisineSelection.swift
//  dish
//
//  Created by Alicia Bao on 8/15/23.
//

//menu for cuisine selection

import SwiftUI

struct cuisineSelection: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.2745, green: 0.4431, blue: 0.2667)
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                VStack{
                    Text("Pick Your Cuisine")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.9569, green: 0.9451, blue: 0.8824))
                    
                    NavigationLink(destination: italianRecipeView()){
                        Text("Italian")
                    }
                    .padding(.vertical, 7)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.9569, green: 0.9451, blue: 0.8824).opacity(0.2))
                    .cornerRadius(5)
                    .font(.title)
                    .fontWeight(.bold)
                    NavigationLink(destination: chineseRecipeView()){ //change to other page later
                        Text("Chinese")
                    }
                    .padding(.vertical, 7)
                    .frame(maxWidth: .infinity)                    .background(Color(red: 0.9569, green: 0.9451, blue: 0.8824).opacity(0.2))
                    .cornerRadius(5)
                    .font(.title)
                    .fontWeight(.bold)
                    NavigationLink(destination: frenchRecipeView()){ //change to new page later
                        Text("French")
                    }
                    .padding(.vertical, 7)
                    .frame(maxWidth: .infinity)                    .background(Color(red: 0.9569, green: 0.9451, blue: 0.8824).opacity(0.2))                    .cornerRadius(5)
                    .font(.title)
                    .fontWeight(.bold)
                }
                .padding()
                .frame(height: 250.0)
                .foregroundColor(Color(red: 0.9569, green: 0.9451, blue: 0.8824))
            }
        }
    }
}

struct cuisineSelection_Previews: PreviewProvider {
    static var previews: some View {
        cuisineSelection()
    }
}
