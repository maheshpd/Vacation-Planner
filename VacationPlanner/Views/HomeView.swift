//
//  HomeView.swift
//  VacationPlanner
//
//  Created by Mahesh Prasad on 16/09/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State var val:String = ""
    
    var body: some View {
        VStack(spacing:0){
            TextField("Placeholder", text: $val)
                .padding()
                .background(Color.red)
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    Text("text")
                    Text("text")
                    Text("text")
                    Text("text")
                    Text("text")
                    Text("text")
                    Text("text")
                    Text("text")
                    Text("text")
                    Text("text")
                }.padding()
                    .background(Color.green)
            }
            
            VStack{
                Text("This is the vstack")
                Text("This is the vstack")
                Text("This is the vstack")
                Text("This is the vstack")
                Text("This is the vstack")
                Text("This is the vstack")
                Text("This is the vstack")
            }
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
