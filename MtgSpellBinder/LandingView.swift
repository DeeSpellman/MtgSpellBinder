//
//  LandingView.swift
//  MtgSpellBinder
//
//  Created by Deirdre Spellman on 12/29/24.
//

import SwiftUI
import SwiftData

struct LandingView: View {
    @Query private var cards: [Card]
    @Environment(\.modelContext) private var modelContext
    @State private var selectedCard: Card?
    
    var body: some View {
        NavigationSplitView {
            List {
                
                
                
                
                
            }
                .navigationTitle("My Collection")
        }detail: {
            Text("manage your cards")
        }
        }
        
       
        
        
    }


#Preview {
    LandingView()
}
