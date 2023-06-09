//
//  ItemRow.swift
//  iDine
//
//  Created by said fatah on 1/5/2023.
//

import SwiftUI

struct ItemRow: View {
    var item:MenuItem
    var colors:[String:Color] = ["D":.purple,"G":.black,"N":.red,"S":.blue,"V":.green]

    var body: some View {
        HStack{
            Image(item.thumbnailImage)
                .clipShape(Circle())
                //.overlay(Circle().stroke(.gray,lineWidth: 2))
            
            VStack(alignment:.leading){
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
            Spacer()
            ForEach(item.restrictions,id: \.self){
                restriction in Text(restriction)
                    .font(.caption)
                    .padding(5)
                    .background(colors[restriction])
                    .clipShape(Circle())
                    .foregroundColor(.white)
                
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example )
    }
}
