//
//  ItemDetail.swift
//  iDine
//
//  Created by said fatah on 1/5/2023.
//

import SwiftUI

struct ItemDetail: View {
    var item:MenuItem
    
    @EnvironmentObject var order:Order

    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()

                Text("By: $\(item.photoCredit)")
                    .padding(4)
                    .foregroundColor(.white)
                    .background(.black)
                    .font(.caption)
                    .offset(x:-5,y:-5)
            }
            
            Text(item.description)
                .padding()
            
            Button("Order This"){
                order.add(item: item)
            }.buttonStyle(.borderedProminent)

            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ItemDetail(item:MenuItem.example)
                .environmentObject(Order())
        }
        
    }
}
