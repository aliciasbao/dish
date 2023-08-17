//
//  ContentView.swift
//  dish
//
//  Created by Alicia Bao on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            NavigationLink(destination: cuisineSelection()){
                Text("click")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
