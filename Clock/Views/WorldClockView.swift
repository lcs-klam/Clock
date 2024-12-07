//
//  WorldClockView.swift
//  Clock
//
//  Created by Thomas Noone on 2024-12-06.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                //HongKong
                CountryTime(time: "3:20", hoursDifference: 12, country: "Hong Kong", isAM: true, isAhead: true)
                //Toronto
                CountryTime(time: "3:20", hoursDifference: 0, country: "Toronto", isAM: false, isAhead: true)
                //Ottowa
                CountryTime(time: "3:20", hoursDifference: 0, country: "Ottowa", isAM: false, isAhead: true)
                //Toronto
                CountryTime(time: "1:20", hoursDifference: 2, country: "Alberta", isAM: false, isAhead: false)
                //Las Vegas
                CountryTime(time: "12:20", hoursDifference: 3, country: "Las Vegas", isAM: false, isAhead: false)
                
                
                Text("World Clock")
                    .navigationTitle("World Clock")
                    .toolbar {
                        
                        ToolbarItem(placement: .topBarLeading) {
                            
                            Button("Edit") {
                                // Does nothing right now
                            }
                            
                        }
                        
                        ToolbarItem(placement: .primaryAction) {
                            
                            Button {
                                // Does nothing right now
                            } label: {
                                Image(systemName: "plus")
                            }
                        }
                        
                        
                    }
                
            }
            
        }
        
    }
}


#Preview {
    LandingView()
}

struct CountryTime: View {
    let time: String
    let hoursDifference: Int
    let country: String
    let isAM: Bool
    let isAhead: Bool
    
    var body: some View {
        HStack {
            // Left side
            VStack {
                Text("Today, \(isAhead == true ? "+" : "-")\(abs(hoursDifference))HRS")
                Text(country)
                    .font(.system(.largeTitle, design: .default, weight: .thin))
            }
            Spacer()
            
            // Right Side
            Text(time)
                .font(.system(size: 64.0, weight: .thin, design: .default))
            Text(isAM == true ? "AM" : "PM")
                .font(.system(.largeTitle, design: .default, weight: .thin))
        }
    }
}
