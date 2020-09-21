//
//  ContentView.swift
//  VacationPlanner
//
//  Created by Mahesh Prasad on 16/09/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    
   
    
    var body: some View {
        TabView(selection: $selection){
            HomeView()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
            }
            .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("Setting")
                    }
                    
            }
            .tag(1)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
