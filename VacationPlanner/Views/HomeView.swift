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

var blue_1 = Color.init(red: 138/255, green: 190/255, blue: 234/255)
var blue_2 = Color.init(red: 111/255, green: 148/255, blue: 182/255)
var blue_3 = Color.init(red: 96/255, green: 152/255, blue: 202/255)

struct HomeView: View {
    
    @State var val:String = ""
    var listOfCountients:[Continents] = [
        Continents.init(name: "Europe", color: blue_1),
        Continents.init(name: "Asia", color: blue_2),
        Continents.init(name: "Africa", color: blue_3),
        Continents.init(name: "South America", color: blue_1),
        Continents.init(name: "North America", color: blue_2)
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
            }
            
            VStack{
                ForEach(0..<3){ _ in
                    LargeLocationButton()
                }.background(Color.blue)
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
