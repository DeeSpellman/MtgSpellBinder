//
//  Item.swift
//  MtgSpellBinder
//
//  Created by Deirdre Spellman on 12/28/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
