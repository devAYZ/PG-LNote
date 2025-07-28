//
//  NavigationBar.swift
//  PG LNote
//
//  Created by Ayokunle Fatokimi on 28/07/2025.
//

import SwiftUI
import GetCovaAssets

struct NavigationBar: View {
    let title: String
    var color: Color = GCAssets.Colors.primaryBlue.swiftUIColor
    private let offSet: CGFloat = 15
    var hideLeftButton: Bool = false
    var leftButtonAction: (() -> ())?
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Rectangle()
            .fill(color.opacity(0.9))
            .frame(height: 75)
            .blur(radius: 0.4)
            .overlay(alignment: .bottom) {
                HStack {
                    if hideLeftButton {
                        Text(title)
                            .foregroundColor(.white)
                            .font(.roboto(size: 19))
                    } else {
                        Button {
                            leftButtonAction?() ?? dismiss()
                        } label : {
                            GCAssets.Images.backArrowWhite.swiftUIImage
                                .padding(.leading, offSet)
                        }
                        Spacer()
                        Text(title)
                            .foregroundColor(.white)
                            .font(.roboto(size: 19))
                            .padding(.leading, -(offSet + 13))
                        Spacer()
                    }
                }
                .padding(.bottom, 5)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    Group {
        NavigationBar(title: "General 2")
    }
}

