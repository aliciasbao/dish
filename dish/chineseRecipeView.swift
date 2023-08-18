//
//  chineseRecipeView.swift
//  dish
//
//  Created by Alicia Bao on 8/17/23.
//
//directed to a placeholder

import SwiftUI

struct chineseRecipeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Text("Popular Chinese American Recipes")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Grid{
                    GridRow{
                        NavigationLink(destination: ingredientsView()) {
                            VStack{
                                Image("pekingDuck")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Peking Duck")
                            }
                        }
                        NavigationLink(destination: ingredientsView()) {
                            VStack{
                                Image("springRolls")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Spring Rolls")
                            }
                        }
                    }
                    GridRow{
                        NavigationLink(destination: ingredientsView()) {
                            VStack{
                                Image("charSiu")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Char Siu")
                            }
                        }
                        NavigationLink(destination: ingredientsView()) {
                            VStack{
                                Image("kungPaoChicken")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150.0, height: 150.0)
                                    .clipped()
                                Text("Kung Pao Chicken")
                            }
                        }
                    }
                }
                Spacer()
                Text("Special thanks to HN Works, CHZU, GSDesign, and GSDesign for the photography.")
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

struct chineseRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        chineseRecipeView()
    }
}
