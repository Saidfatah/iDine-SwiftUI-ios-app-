//
//  ContentView.swift
//  iDine
//
//  Created by said fatah on 1/5/2023.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView{
            List{
                ForEach(menu){ section in
                    Section(section.name){
                        ForEach(section.items){ item in
                            NavigationLink{
                                ItemDetail(item:item)
                            } label:{
                                ItemRow(item: item)
                            }
                            
                        }
                    }
                }
               
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
