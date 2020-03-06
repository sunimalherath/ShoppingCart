//
//  ShopRow.swift
//  ShoppingCart
//
//  Created by Sunimal Herath on 7/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct ShopRow: View {
    var inCart: Bool
    var shopItem: ShopItem
    var body: some View {
        HStack{
            Text(shopItem.name)
            Text("$\(String.init(format: "%.2f", shopItem.price))")
                .fontWeight(.bold)
            Spacer()
            Image(inCart ? "checked" : "unchecked")
            .resizable()
                .aspectRatio(1, contentMode: .fit)
            .frame(width: 50)
        }
    }
}
