//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Ashish Yadav on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cardData) { card in
                    CardView(card: card)
                }
            }
            .padding(20)
        }
        
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
