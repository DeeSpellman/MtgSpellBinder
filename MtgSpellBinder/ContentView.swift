//
//  ContentView.swift
//  MtgSpellBinder
//
//  Created by Deirdre Spellman on 12/28/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var cards: [Card]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(cards) { card in
                    NavigationLink {
                        Text("Item at \(card.cardName)")
                    } label: {
                        Text(card.cardName)
                    }
                }
                .onDelete(perform: deleteCards)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    //error will be fixed with next steps
                    Button(action: addCard()) {
                        Label("Add Card", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addCard() {
        //next steps - change to open user entry, enter card number
        withAnimation {
            let newCard = Card(cardNum: <#T##Int#>, cardName: <#T##String#>, cardType: <#T##String#>, cardSet: <#T##String#>, cardRarity: <#T##String#>, cardImage: <#T##String?#>)
            modelContext.insert(newCard)
        }
    }

    private func deleteCards(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(cards[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Card.self, inMemory: true)
}
