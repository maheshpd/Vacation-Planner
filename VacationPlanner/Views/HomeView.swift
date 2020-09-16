//
//  HomeView.swift
//  VacationPlanner
//
//  Created by Mahesh Prasad on 16/09/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import SwiftUI

struct Continents: Identifiable {
    var id = UUID()
    var name: String
    var color: Color
}


struct HomeView: View {
    
    @State var val:String = ""
    var listOfCountients:[Continents] = [
        Continents.init(name: "Europe", color: Color.red),
        Continents.init(name: "Asia", color: Color.blue),
        Continents.init(name: "Africa", color: Color.green),
        Continents.init(name: "South America", color: Color.yellow),
        Continents.init(name: "North America", color: Color.orange)
    ]
    
    var body: some View {
        VStack(spacing:0){
            TextField("Placeholder", text: $val)
                .padding()
                .background(Color.red)
            
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    Spacer().frame(width: 10)
                    ForEach(listOfCountients,id: \.id){thisContinent in
                        
                        Text("\(thisContinent.name)").padding()
                            .background(thisContinent.color)
                            .cornerRadius(10)
                            .font(.system(size: 15, weight: .bold))
                    }
                    
                    
                    
                }.padding([.top,.bottom], 20)
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
