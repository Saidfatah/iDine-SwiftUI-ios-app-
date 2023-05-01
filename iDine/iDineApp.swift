//
//  iDineApp.swift
//  iDine
//
//  Created by said fatah on 1/5/2023.
//

import SwiftUI

@main
struct iDineApp: App {
    // @StateObject just makes sure that the order object stays alaive throught the life cuycles of our app
    // since Order impliments ObservableObject in this case the object is an observableObject
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            ContentView()
            // this makes sure we pass the order(observableObject) object to the children
            // its swiftUI's of sharing data across diffrent parts of our app
            // basicailly like ContextAPI in react
            //now you have ObservableObject + environmentObject = live data updates across the app 
            .environmentObject(order)
        }
    }
}
