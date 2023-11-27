//
//  CartItemDomain.swift
//  OnlineStoreTCA
//
//  Created by Pedro Rojas on 22/08/22.
//

import Foundation
import ComposableArchitecture

@Reducer
struct CartItemDomain {
    struct State: Equatable, Identifiable {
        let id: UUID
        let cartItem: CartItem
    }
    
    enum Action: Equatable {
        case deleteCartItem(product: Product)
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .deleteCartItem:
                return .none
            }
        }
    }
}
