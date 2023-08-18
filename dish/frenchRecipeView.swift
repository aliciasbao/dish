//
//  frenchRecipeView.swift
//  dish
//
//  Created by Alicia Bao on 8/17/23.
//

import SwiftUI

struct frenchRecipeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Text("Popular French Recipes")
                    .font(.title)
                    .fontWeight(.bold)
                Grid{
                    GridRow{
                        NavigationLink(destination: frenchIngredients()) {
                            VStack{
                                Image("frenchChicken")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Chicken Fricassee")
                            }
                        }
                        NavigationLink(destination: frenchIngredients()) {
                            VStack{
                                Image("coqAuVin")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Coq Au Vin")
                            }
                        }
                    }
                    GridRow{
                        NavigationLink(destination: frenchIngredients()) {
                            VStack{
                                Image("steakFrites")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Steak Frites")
                            }
                        }
                        NavigationLink(destination: frenchIngredients()) {
                            VStack{
                                Image("mussels")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Moules Marinières")
                            }
                        }
                    }
                }
                Spacer()
                Text("Special thanks to chandlervid85, sam, Brent Hofacker, and Martin Turzak for the photography.")
                    .multilineTextAlignment(.center)
                    .padding(.all, 15.0)
                    .background(Color(red: 0.2745, green: 0.4431, blue: 0.2667) /*green*/)
                    .foregroundColor(Color(red: 0.9569, green: 0.9451, blue: 0.8824) /*cream*/)
            }
            .background(Color(red: 0.9569, green: 0.9451, blue: 0.8824) /* cream */)
            .foregroundColor(Color(red: 0.2157, green: 0.2275, blue: 0.2314) /*grey*/)
            
        }
        .ignoresSafeArea()
    }
}

struct frenchRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        frenchRecipeView()
    }
}
