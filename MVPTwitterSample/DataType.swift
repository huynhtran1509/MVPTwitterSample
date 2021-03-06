//
//  DataType.swift
//  Konomi
//
//  Created by tanaka.kenji on 2016/04/05.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import Foundation

protocol DataType {
    
    associatedtype ItemType
    
    var items: [ItemType] { get set }
    
    var numberOfItem: Int { get }
    
    subscript(index: Int) -> ItemType { get }
    
    func insert(item: ItemType, at index: Int) -> Self
    func delete(at index: Int) -> Self
}

extension DataType {
    var numberOfItem: Int {
        return items.count
    }
    
    subscript(index: Int) -> ItemType {
        return items[index]
    }
}
