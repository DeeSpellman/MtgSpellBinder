//
//  Deck.swift
//  MtgSpellBinder
//
//  Created by Deirdre Spellman on 12/29/24.
//

import SwiftData

@Model
final class Deck {
    @Attribute(.unique) var id: ID
    @Attribute
    var name: String
    var cards = [Card]()
    
    
    init(id: ID, name: String, cards: [Card] = [Card]()) {
        self.id = id
        self.name = name
        self.cards = cards
    }
}
