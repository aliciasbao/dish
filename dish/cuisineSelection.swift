//
//  cuisineSelection.swift
//  dish
//
//  Created by Alicia Bao on 8/15/23.
//

import SwiftUI

struct cuisineSelection: View {
    var body: some View {
            VStack{
                Text("Pick Your Cuisine")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.2745, green: 0.4431, blue: 0.2667))
                
                NavigationStack {
                    NavigationLink(destination: recipeView()){
                        Text("Italian")
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all, 5.0/*@END_MENU_TOKEN@*/)
                    NavigationLink(destination: recipeView()){
                        Text("Chinese")
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all, 5.0/*@END_MENU_TOKEN@*/)
                    NavigationLink(destination: recipeView()){
                        Text("French")
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all, 5.0/*@END_MENU_TOKEN@*/)
                }
                .padding()
                
            }
            .foregroundColor(Color(red: 0.2745, green: 0.4431, blue: 0.2667) /* #467144 */)
            .background(Color(red: 0.9569, green: 0.9451, blue: 0.8824) /* cream */)
    }
    
}

struct cuisineSelection_Previews: PreviewProvider {
    static var previews: some View {
        cuisineSelection()
    }
}
