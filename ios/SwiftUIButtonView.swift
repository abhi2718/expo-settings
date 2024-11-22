//
//  SwiftUIButtonView.swift
//  ExpoSettings
//
//  Created by Abhishek Singh on 21/11/24.
//

import SwiftUI

struct SwiftUIButtonView: View {
    var title: String
    var onPress: () -> Void

    var body: some View {
        Button(action: {
            onPress()
        }) {
            Text(title)
                .frame(width: 100, height: 50)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(8)
        }
        .padding()
        
    }
}
