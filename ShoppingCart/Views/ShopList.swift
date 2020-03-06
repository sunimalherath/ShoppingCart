//
//  ShopRow.swift
//  ShoppingCart
//
//  Created by Sunimal Herath on 6/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct ShopList: View {
    var availableItems: [ShopItem]
    @State private var cartItems: Dictionary<Int, ShopItem> = [:]
    var body: some View {
        NavigationView{
            List(availableItems) { item in
                ShopRow(inCart: self.inCart(shopItem: item), shopItem: item)
                    .onTapGesture {
                        self.toggleCartItem(shopItem: item)
                }
            }
            .navigationBarTitle("The Shop")
            .navigationBarItems(trailing: Cart())
        }
    }
    
    private func toggleCartItem(shopItem: ShopItem) {
        if cartItems[shopItem.id] == nil {
            cartItems[shopItem.id] = shopItem
        } else {
            cartItems[shopItem.id] = nil
        }
    }
    
    private func inCart(shopItem: ShopItem) -> Bool {
        return cartItems[shopItem.id] != nil
    }
}

struct Cart: View {
    var body: some View {
        Image("cart")
        .resizable()
        .frame(width: 50, height: 50)
    }
}

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

struct ShopRow_Previews: PreviewProvider {
    static var previews: some View {
        ShopList(availableItems: [
            ShopItem(price: 99.99, id: 1, name: "Nike Air"),
            ShopItem(price: 899.99, id: 2, name: "iPhone 2X"),
            ShopItem(price: 69.99, id: 3, name: "Bike Carrier")
        ])
    }
}
