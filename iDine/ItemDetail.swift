//
//  ItemDetail.swift
//  iDine
//
//  Created by said fatah on 1/5/2023.
//

import SwiftUI

struct ItemDetail: View {
    var item:MenuItem
    var body: some View {
        VStack{
            Image(item.mainImage)
            Text(item.description)
        }.navigationTitle(item.name)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item:MenuItem.example)
    }
}
