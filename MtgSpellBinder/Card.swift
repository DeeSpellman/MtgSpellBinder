//
//  Card.swift
//  MtgSpellBinder
//
//  Created by Deirdre Spellman on 12/28/24.
//
import Foundation
import SwiftData

@Model
final class Card {
    var cardNum : Int
    var cardName: String
    var cardType: String
    var cardSet: String
    var cardRarity: String
    var cardImage: String?
    
    init(cardNum: Int, cardName: String, cardType: String, cardSet: String, cardRarity: String, cardImage: String?) {
        self.cardNum = cardNum
        self.cardName = cardName
        self.cardType = cardType
        self.cardSet = cardSet
        self.cardRarity = cardRarity
        self.cardImage = cardImage
    }
}
