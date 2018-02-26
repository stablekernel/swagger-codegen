//
// Store.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

class Store {
    let gateway: Gateway

    let pet: PetStoreProtocol
    let store: StoreStoreProtocol
    let user: UserStoreProtocol

    init(gateway: Gateway,
        petStore: PetStoreProtocol,
        storeStore: StoreStoreProtocol,
        userStore: UserStoreProtocol) {  
        self.gateway = gateway
        pet = petStore
        store = storeStore
        user = userStore
    }

    convenience init(gateway: Gateway) {
        self.init(gateway: gateway,
        petStore: PetStore(gateway),
        storeStore: StoreStore(gateway),
        userStore: UserStore(gateway))
    }
}
