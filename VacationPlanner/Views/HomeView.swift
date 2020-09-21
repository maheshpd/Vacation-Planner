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
    var enumVal: enumContinents
}

var blue_1 = Color.init(red: 138/255, green: 190/255, blue: 234/255)
var blue_2 = Color.init(red: 111/255, green: 148/255, blue: 182/255)
var blue_3 = Color.init(red: 96/255, green: 152/255, blue: 202/255)

struct HomeView: View {
    
    @State var val:String = ""
     @State private var selectedContinent = enumContinents.europe
    
    
    var listOfCountients:[Continents] = [
        Continents.init(name: "Europe", color: blue_1, enumVal: .europe),
        Continents.init(name: "Asia", color: blue_2, enumVal: .asia),
        Continents.init(name: "Africa", color: blue_3, enumVal: .africa),
        Continents.init(name: "South America", color: blue_1, enumVal: .southAmerica),
        Continents.init(name: "North America", color: blue_2, enumVal: .northAmerica)
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
                        
                        Button(action: {
                            self.selectedContinent = thisContinent.enumVal
                        }) {
                            Text("\(thisContinent.name)").padding()
                                .foregroundColor(self.selectedContinent ==
                                    thisContinent.enumVal ? Color.white : thisContinent.color)
                                .background(self.selectedContinent ==
                                    thisContinent.enumVal ? thisContinent.color :
                                    Color.init(red: 0.95, green: 0.85, blue: 0.85))
                            
                                .cornerRadius(10)
                                .font(.system(size: 15, weight: .bold))
                        }
                    }
                    
                    
                    
                }.padding([.top,.bottom], 20)
            }
            
            ScrollView(.vertical,showsIndicators: false){
                VStack{
                    
                    ForEach(0..<3){ _ in
                        LargeLocationButton()
                    }
                    }.padding()
                .background(Color.clear)
            }
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
