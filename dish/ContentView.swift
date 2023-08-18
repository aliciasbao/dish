//
//  ContentView.swift
//  dish
//
//  Created by Alicia Bao on 8/15/23.
//

import SwiftUI

//landing or welcome page

struct ContentView: View {
    //    @State private var name = ""
    @State var show = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                Image("dish")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width)
                VStack {
                    NavigationLink(destination: enterName(), isActive: $show, label: {
                                    EmptyView()
//                            .navigationBarBackButtonHidden(true) // not working for some reason LOL
                                })
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            self.show.toggle()
                        }
                    }
                    // slogan under logo
                    //                        Text("crafting incredible meals for you")
                    //                            .font(.headline)
                    //                            .fontWeight(.bold)
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
