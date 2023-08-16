//
//  italianRecipeView.swift
//  dish
//
//  Created by Alicia Bao on 8/15/23.
//

import SwiftUI

struct italianRecipeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Text("Popular Recipes")
                    .font(.title)
                    .fontWeight(.bold)
                Grid{
                    GridRow{
                        NavigationLink(destination: singleRecipe()) {
                            VStack{
                                Image("risotto")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Mushroom Risotto")
                            }
                        }
                        NavigationLink(destination: singleRecipe()) {
                            VStack{
                                Image("pizza")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Pizza Crust")
                            }
                        }
                    }
                    GridRow{
                        NavigationLink(destination: singleRecipe()) {
                            VStack{
                                Image("carbonara")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Carbonara")
                            }
                        }
                        NavigationLink(destination: singleRecipe()) {
                            VStack{
                                Image("gnocchi")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Gnocchi")
                            }
                        }
                    }
                }
                Spacer()
                Text("Special thanks to Lucas Lobak Neves, Saundarya Srinivasan, Rob Wicks, and Stefan Schauberger for the photography.")
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                    .background(Color(red: 0.2745, green: 0.4431, blue: 0.2667) /*green*/)
                    .foregroundColor(Color(red: 0.9569, green: 0.9451, blue: 0.8824) /*cream*/)
            }
            .background(Color(red: 0.9569, green: 0.9451, blue: 0.8824) /* cream */)
            .foregroundColor(Color(red: 0.2157, green: 0.2275, blue: 0.2314) /*grey*/)
            
            .ignoresSafeArea()
        }
    }
}

struct italianRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        italianRecipeView()
    }
}
