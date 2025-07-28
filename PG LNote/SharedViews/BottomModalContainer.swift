//
//  BottomModalContainer.swift
//  PG LNote
//
//  Created by Ayokunle Fatokimi on 28/07/2025.
//

import SwiftUI

struct BottomModalContainer<Content: View>: View {
    
    // MARK: Properties
    @Binding var heightMultiplier: CGFloat
    let content: () -> Content
    @Environment(\.dismiss) var dismiss
    
    // MARK: Init
    init(heightMultiplier: Binding<CGFloat>,
         @ViewBuilder content: @escaping () -> Content
    ) {
        self._heightMultiplier = heightMultiplier
        self.content = content
    }
    
    var body: some View {
        
        ZStack {
            Color(.black)
                .opacity(0.5)
                .onTapGesture {
                    dismiss()
                }
            
            VStack {
                Spacer()
                
                VStack {
                    CloseHandlerView() {
                        dismiss()
                    }
                    
                    ScrollView {
                        content()
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 30)
                .frame(height: UIScreen.main.bounds.height / heightMultiplier)
                .background(Color.white)
                .cornerRadius(20)
            }
            .edgesIgnoringSafeArea(.bottom) // Extend view to the bottom of
            
        }
        .edgesIgnoringSafeArea(.all)
        .background(TransparentBackground())
    }
}

#Preview {
    BottomModalContainer(heightMultiplier: .constant(2.1)) {
//        ScrollView {
            Text("Hello, World!")
//        }
    }
}

