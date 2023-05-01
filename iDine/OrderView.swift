//
//  OrderView.swift
//  iDine
//
//  Created by said fatah on 1/5/2023.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order:Order
    
    var body: some View {
        NavigationView{
            List{
                Section{
                    ForEach(order.items){ item in
                        HStack{
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                        
                        
                    }
                }
                
                Section{
                    NavigationLink("Place Order"){
                        Text("Check Out ")
                    }
                }
            }.navigationTitle("Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
