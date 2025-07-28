//
//  CloseHandlerView.swift
//  PG LNote
//
//  Created by Ayokunle Fatokimi on 28/07/2025.
//

import SwiftUI

struct CloseHandlerView: View {
    var dismiss: () -> () = {}
    
    var body: some View {
        // Close handler
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .frame(width: 60, height: 8)
                .foregroundColor(Color.gray.opacity(0.5))
            HStack {
                Spacer()
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.gray)
                }
                .padding()
            }
        }
    }
}

#Preview {
    CloseHandlerView()
}
