//
//  ContainerModels.swift
//  Lesson-8-Generic
//
//  Created by Aleksandr Moroshovskyi on 14.03.2024.
//

import Foundation


struct APIStringResponse {
    
    var stringItems: [String] = []
    
    var date: Date = Date()
    
    mutating func update(with items: [String]) {
        stringItems = items
    }
}

struct APIIntResponse {
    
    var intItems: [Int] = []
    
    var date: Date = Date()
    
    mutating func update(with items: [Int]) {
        intItems = items
    }
}


//Generics
//T - просто якийсь тип

struct APIUniversalResponse<T> {
    
    var items: [T] = []
    
    var date: Date = Date()
    
    mutating func update(with newItems: [T]) {
        items = newItems
    }
}
