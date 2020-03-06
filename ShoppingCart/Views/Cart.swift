//
//  Cart.swift
//  ShoppingCart
//
//  Created by Sunimal Herath on 7/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct Cart: View {
    var cartItems: Int
    var body: some View {
        ZStack{
            Image("cart")
            .resizable()
            .frame(width: 50, height: 50)
            ZStack{
                Circle()
                    .fill(Color.red)
                    .frame(maxWidth: 25)
                Text("\(cartItems)")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
            .offset(x: 20, y: 10)
            .opacity(cartItems > 0 ? 1.0 : 0)
        }
        
    }
}
