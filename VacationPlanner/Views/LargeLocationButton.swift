//
//  LargeLocationButton.swift
//  VacationPlanner
//
//  Created by Mahesh Prasad on 16/09/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import SwiftUI

struct LargeLocationButton: View {
    var body: some View {
        VStack{
            
            Image(systemName: "play.fill")
                .frame(height: 200)
                .background(Color.green)
            
            HStack{
                VStack(alignment: .leading){
                    Text("City")
                        .font(.system(size: 30, weight: .bold))
                    Text("Cost")
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack(alignment:.trailing){
                    HStack{
                        ForEach(0..<5) {_ in
                            Image(systemName: "star")
                                .foregroundColor(Color.yellow)
                        }
                    }.frame(width: 150)
                    HStack {
                        Text("1000+ ratings")
                            .frame(width: 70)
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                        
                        Text("4.5/5")
                            .font(.system(size: 20))
                            .frame(width: 60)
                    }
                }
            }
        }.padding(10)
            .background(Color.gray)
            .cornerRadius(10)
    }
}

struct LargeLocationButton_Previews: PreviewProvider {
    static var previews: some View {
        LargeLocationButton()
    }
}
