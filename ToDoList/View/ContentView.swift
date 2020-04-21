//
//  ContentView.swift
//  ToDoList
//
//  Created by Simon Ng on 24/3/2020.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
    private var todoItems = [ ToDoItem(name: "Meet Eddie for lunch"),
                              ToDoItem(name: "Buy toilet paper"),
                              ToDoItem(name: "Write a new tutorial"),
                              ToDoItem(name: "Buy two bottles of wine"),
                              ToDoItem(name: "Prepare the presentation deck")
                                ]
    
    @State private var searchText = ""
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                HStack {
                    Text("ToDo List")
                        .font(.system(size: 40, weight: .black, design: .rounded))
                        
                    Spacer()
                    
                    Button(action: {
                        // show new task view
                        
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.purple)
                    }
                }
                .padding()
                
                SearchBar(text: $searchText)
                    .padding(.top, -30)
                
                List(todoItems.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { item in
                    Text(item.name)
                }
                
                
            }
    
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

