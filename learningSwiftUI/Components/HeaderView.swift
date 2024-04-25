//
//  HeaderView.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack{
            Image("nike")
                .resizable()
                .frame(width: 250,height: 80)
               
            
            Text("Just Do It")
                .font(.system(size: 30))
                .fontWeight(.bold)
        }
    }
}

#Preview {
    HeaderView()
}
