//
//  Decks.swift
//  MtgSpellBinder
//
//  Created by Deirdre Spellman on 12/29/24.
//
import SwiftData

@Model
final class Decks {
    @Attribute(.unique) var id: Int
    @Attribute var name: String
    var decks = [Deck]()
    
    init(id: Int, name: String, decks: [Deck] = [Deck]()) {
        self.id = id
        self.name = name
        self.decks = decks
    }
    
}
