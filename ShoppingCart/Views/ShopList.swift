//
//  ShopRow.swift
//  ShoppingCart
//
//  Created by Sunimal Herath on 6/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct ShopList: View {
    var body: some View {
        
        List{
            ShopRow()
            ShopRow()
            ShopRow()
            ShopRow()
        }
        
    }
}

struct ShopRow: View {
    var body: some View {
        HStack{
            Text("Nike Air")
            Text("$99.99")
                .fontWeight(.bold)
            Spacer()
            Image("checked")
            .resizable()
                .aspectRatio(1, contentMode: .fit)
            .frame(width: 50)
        }
    }
}

struct ShopRow_Previews: PreviewProvider {
    static var previews: some View {
        ShopList()
    }
}
