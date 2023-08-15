//
//  italianRecipeView.swift
//  dish
//
//  Created by Alicia Bao on 8/15/23.
//

import SwiftUI

struct italianRecipeView: View {
    var body: some View {
        VStack{
            Text("Popular Recipes")
                .font(.title)
                .fontWeight(.bold)
            Grid{
                GridRow{
                    Text("Recipe 1")
                    Text("Recipe 2")
                }
                GridRow{
                    Text("Recipe 3")
                    Text("Recipe 4")
                }
            }
        }
    }
}

struct italianRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        italianRecipeView()
    }
}
