//
//  cuisineSelection.swift
//  dish
//
//  Created by Alicia Bao on 8/15/23.
//

import SwiftUI

struct cuisineSelection: View {
    var body: some View {
        NavigationStack{
        ZStack{
//            Color(red: 0.9569, green: 0.9451, blue: 0.8824)
            Color(red: 0.2745, green: 0.4431, blue: 0.2667)
                .ignoresSafeArea()
            VStack{
                Text("Pick Your Cuisine")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.9569, green: 0.9451, blue: 0.8824))
                    
                    NavigationLink(destination: italianRecipeView()){
                        Text("Italian")
                    }
                    .padding(.vertical, 7)
                    .padding(.horizontal, 25)
                    .background(Color(red: 0.2745, green: 0.4431, blue: 0.2667))
                    .cornerRadius(5)
                    NavigationLink(destination: italianRecipeView()){ //change to other page later
                        Text("Chinese")
                    }
                    .padding(.vertical, 7)
                    .padding(.horizontal, 17)
                    .background(Color(red: 0.2745, green: 0.4431, blue: 0.2667))
                    .cornerRadius(5)
                    NavigationLink(destination: italianRecipeView()){ //change to new page later
                        Text("French")
                    }
                    .padding(.vertical, 7)
                    .padding(.horizontal, 22)
                    .background(Color(red: 0.2745, green: 0.4431, blue: 0.2667))
                    .cornerRadius(5)
                }
                .padding()
                .frame(height: 250.0)
                .foregroundColor(Color(red: 0.9569, green: 0.9451, blue: 0.8824))
                 //text
                //.background(Color(red: 0.9569, green: 0.9451, blue: 0.8824)) // frame around navstack
            }
        }
//        .foregroundColor(Color(red: 0.2745, green: 0.4431, blue: 0.2667) /* green */)
//        .background(Color(red: 0.9569, green: 0.9451, blue: 0.8824) /* cream */)
        
    }
}

struct cuisineSelection_Previews: PreviewProvider {
    static var previews: some View {
        cuisineSelection()
    }
}
