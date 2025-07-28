//
//  GCTextButton.swift
//  PG LNote
//
//  Created by Ayokunle Fatokimi on 28/07/2025.
//

import SwiftUI
import GetCovaAssets

struct GCTextButton: View {
    
    // MARK: Properties
    @Binding private var btnActivate: Bool
    @Binding private var btnTextColor: Color
    private let btnText: String
    private let btnImage: Image?
    let btnFont: Font
    private let btnAction: () -> ()

    // MARK: Init
    public init(btnText: String = "Proceed",
                btnImage: Image? = nil,
                btnTextColor: Binding<Color> = .constant(GCAssets.Colors.primaryBlue.swiftUIColor),
                btnActivate: Binding<Bool> = .constant(true),
                btnFont: Font = .roboto(.medium, size: 17),
                btnAction: @escaping () -> Void
    ) {
        self.btnText = btnText
        self.btnImage = btnImage
        self._btnTextColor = btnTextColor
        self._btnActivate = btnActivate
        self.btnFont = btnFont
        self.btnAction = btnAction
    }
    
    // MARK: Main View
    var body: some View {
        Button(action: btnAction) {
            HStack(spacing: 10) {
                Text(btnText)
                    .foregroundStyle(btnActivate ? (btnTextColor) : (GCAssets.Colors.deepGrey.swiftUIColor))
                    .font(btnFont)
                if let buttonImage = btnImage {
                    buttonImage
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
        .environment(\.isEnabled, btnActivate)
    }
}

#Preview {
    
    Group {
        GCTextButton(btnText: "Preview", btnActivate: .constant(false), btnAction: {})
        
        GCTextButton(btnText: "Activate", btnTextColor: .constant(.red),
                     btnActivate: .constant(true), btnAction: {})
    }
}
