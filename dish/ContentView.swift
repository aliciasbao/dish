//
//  ContentView.swift
//  dish
//
//  Created by Alicia Bao on 8/15/23.
//

import SwiftUI


struct ContentView: View {
    //    @State private var name = ""
    @State var show = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                Image("dish")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 395.0, height: 895.0)
                VStack {
                    //                    NavigationLink(destination: enterName())
                    //                    {
                    //                        Text("hi")
                    //                    }
                    NavigationLink(destination: enterName(), isActive: $show, label: {
                                    EmptyView()
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
