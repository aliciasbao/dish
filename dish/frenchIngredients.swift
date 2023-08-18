//
//  frenchIngredients.swift
//  dish
//
//  Created by Alicia Bao on 8/17/23.
//

import SwiftUI

struct frenchIngredients: View {
    
    let text: [Ingredient] = [.chicken, .butter, .mushrooms, .flour, .chickenBroth, .heavyCream]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.9569, green: 0.9451, blue: 0.8824) /*cream*/
                VStack(alignment: .leading){
                    Image("frenchChicken")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: 250)
                        .clipped()
                        .ignoresSafeArea()
                    VStack(alignment: .leading){
                        Text("Chicken Fricassee")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.vertical, 5)
                            .padding(.leading, 15.0)
                    }
                    List (text, children: \.text) {row in
                        Text(row.name)
                    }
                    .scrollContentBackground(.hidden)
                    .listStyle(.inset)
                    .foregroundColor(Color(red: 0.2157, green: 0.2275, blue: 0.2314) /*grey*/
                    )
                }
            }
            .ignoresSafeArea()
        }
    }
}

extension Ingredient {
    //text descriptions
    static let forChicken = Ingredient(name: "Industrially raised chicken may be associated with ethical concerns of factory farming practices, animal welfare, and excessive resource consumption.")
    static let forButter = Ingredient(name: "The production of dairy products like parmesan can involve ethical concerns regarding land use, water consumption, and methane emissions from livestock. \n\nConsider using a plant-based oil instead.")
    static let forMushrooms = Ingredient(name: "Mushrooms are considered to have a low environmental impact. However, some commercial farming practices may involve excessive resource consumption and chemical use.")
    static let forFlour = Ingredient(name: "The production of conventional wheat can involve ethical concerns regarding pesticide use and soil degradation.")
    static let forChickenBroth = Ingredient(name: "Conventional chicken broth may be associated with ethical concerns of factory farming practices, animal welfare, and excessive resource consumption associated with poultry production. Consider using vegetable broth instead.")
    static let forHeavyCream = Ingredient(name: "Conventional dairy production can involve ethical concerns regarding animal welfare, resource consumption, and greenhouse gas emissions. \n\nConsider using cashew cream or coconut cream instead.")


    //ingredient heading
    static let chicken = Ingredient(name: "Chicken Thighs", text: [Ingredient.forChicken])
    static let butter = Ingredient(name: "Butter", text: [Ingredient.forButter])
    static let mushrooms = Ingredient(name: "Mushrooms", text: [Ingredient.forMushrooms])
    static let flour = Ingredient(name: "All Purpose Flour", text: [Ingredient.forFlour])
    static let chickenBroth = Ingredient(name: "Chicken Broth", text: [Ingredient.forChickenBroth])
    static let heavyCream = Ingredient(name: "Heavy Cream", text: [Ingredient.forHeavyCream])


}

struct frenchIngredients_Previews: PreviewProvider {
    static var previews: some View {
        frenchIngredients()
    }
}


