//
//  ingredientsView.swift
//  dish
//
//  Created by Alicia Bao on 8/15/23.
//

import SwiftUI

struct Ingredient: Identifiable {
    let id = UUID()
    let name: String
    var text: [Ingredient]? //matching object type
}

struct ingredientsView: View {
    
    let text: [Ingredient] = [.pork, .parm, .eggs, .oil, .noodles]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.9569, green: 0.9451, blue: 0.8824) /*cream*/
                //button pressed, make some variable == "pizza"
                //if var  == "pizza", open this screen, etc.
                VStack(alignment: .leading){
                    Image("carbonara")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: 250)
                        .clipped()
                        .ignoresSafeArea()
                    VStack(alignment: .leading){
                        Text("Carbonara")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.vertical, 5)
                        
                    }
//                    List{
//                        ForEach (text, id: \.text) {
//                            Text($0.name)
//                        }
//                        .listRowBackground(Color.red)
//                    }
                    
//
//                        List (text, children: \.text) {row in
//                            ForEach(text){
//                                Text($0.name)
//                                    .listRowBackground(Color.red)
//
//                            }
//                        }
//                        .scrollContentBackground(.hidden)
//                        .listStyle(.inset)
                        //                        .padding(.leading, 25.0)
                        .foregroundColor(Color(red: 0.2157, green: 0.2275, blue: 0.2314) /*grey*/
                        )
                        .padding(.leading, 25.0)
                    .listRowBackground(Color.red)
                }
            }
            .ignoresSafeArea()
        }
    }
}

extension Ingredient {
    //text descriptions
    static let forPork = Ingredient(name: "Guanciale, pancetta, and bacon are all made from pork. Pig farming has a lot of ethical concerns regarding factory farming practices, animal welfare, and deforestation. It also contributes to greenhouse gas emissions. \n\nPossible alternatives include plant based-bacon, smoked tofu, tempeh, and sauteed mushrooms.")
    static let forParm = Ingredient(name: "The production of dairy products like parmesan can involve ethical concerns regarding land use, water consumption, and methane emissions from livestock. It also contributes to deforestation for grazing. \n\nPossible alternatives include vegan cheeses and nutritional yeast.")
    static let forEggs = Ingredient(name: "Egg production can involve ethical concerns regarding animal welfare and excessive resource consumption. It also contributes to pollution and soil degradation. \n\nPossible alternatives include cashew cream and silken tofu.")
    static let forOil = Ingredient(name: "Olive oil production can involve ethical concerns regarding land use, water consumption, and unsustainable farming practices. It helps to be brand concious.")
    static let forNoodles = Ingredient(name: "Pasta production can contribute to greenhouse gas emissions due to its transportation. Some types of pasta contain palm oil, which leads to deforestation and habitat destruction. It helps to be brand concious.")
    
    //ingredient heading
    static let pork = Ingredient(name: "Guanciale/Pancetta/Bacon", text: [Ingredient.forPork])
    static let parm = Ingredient(name: "Parmesean/Pecorino Romano", text: [Ingredient.forParm])
    static let eggs = Ingredient(name: "Eggs and Egg Yolks", text: [Ingredient.forEggs])
    static let oil = Ingredient(name: "Olive Oil", text: [Ingredient.forOil])
    static let noodles = Ingredient(name: "Pasta", text: [Ingredient.forNoodles])
    
    
}

struct ingredientsView_Previews: PreviewProvider {
    static var previews: some View {
        ingredientsView()
    }
}
