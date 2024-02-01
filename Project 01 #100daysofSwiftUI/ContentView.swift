//
//  ContentView.swift
//  Project 01 #100daysofSwiftUI
//
//  Created by Ygor Simoura on 31/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var adress = ""
    @State private var zipCode = ""
    @State private var age = Date()
    
    
    let formation = ["Computer Science", "Medicine", "Pharmcy", "Architecture", "Languages", "Biomedicine", "Dentistry", "Other..."]
    @State private var formationSelected = "Computer Science"
    @State private var institutionName = ""
    @State private var startDate = Date()
    @State private var endDate = Date()
    
    var body: some View {
        NavigationStack{
                Form {
                    
                    Section(header: Text("Personal information")){
                        
                        TextField("Coplete name", text: $name)
                        TextField("Address", text: $adress)
                        TextField("Zip Code", text: $zipCode)
                        
                        DatePicker(
                        "Birth date",
                        selection: $age,
                        displayedComponents: [.date]
                        )
                        
                    }
                    
                    Section(header: Text("Institutional information")) {
                        
                        TextField("Institution name", text: $institutionName)
                        
                        Picker("Your course", selection: $formationSelected) {
                            ForEach(formation, id: \.self) {
                                Text($0)
                            }
                        }
                        
                        DatePicker(
                        "Start Date",
                        selection: $startDate,
                        displayedComponents: [.date]
                        )
                        
                        DatePicker(
                        "Conclusion Date",
                        selection: $endDate,
                        displayedComponents: [.date]
                        )
                        
                    }
                    
                    
                }
                .navigationTitle("Fill out the form")
            }
        }
    }

#Preview {
    ContentView()
}
