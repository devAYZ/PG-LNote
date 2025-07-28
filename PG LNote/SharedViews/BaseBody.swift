//
//  BaseBody.swift
//  PG LNote
//
//  Created by Ayokunle Fatokimi on 28/07/2025.
//

import SwiftUI
import GetCovaAssets

struct BaseBody<Content: View>: View {
    
    // MARK: Properties
    @Binding var shouldScroll: Bool
    @Binding var showLoader: Bool
    var viewBgColor: ColorAsset
    let content: () -> Content

    // MARK: Init
    init(shouldScroll: Binding<Bool> = .constant(false),
         viewBgColor: ColorAsset = GCAssets.Colors.white,
         showLoader:  Binding<Bool> = .constant(false),
         @ViewBuilder content: @escaping () -> Content
    ) {
        self._shouldScroll = shouldScroll
        self.viewBgColor = viewBgColor
        self._showLoader = showLoader
        self.content = content
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                if shouldScroll {
                    ZStack {
                        viewBgColor.swiftUIColor.opacity(0.7)
                            .ignoresSafeArea()
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                content()
                            }
                        }
                    }
                } else {
                    ZStack {
                        viewBgColor.swiftUIColor.opacity(0.7)
                            .ignoresSafeArea()
                        VStack {
                            content()
                        }
                    }
                }
                
                if  showLoader {
                    LoadingView()
                        .animation(.smooth, value: 0.3)
                }
            }
        }
        .accentColor(GCAssets.Colors.primaryBlue.swiftUIColor)
        .navigationBarTitleDisplayMode(.large)
        .alertButtonTint(color: GCAssets.Colors.primaryBlue.swiftUIColor)
    }

}

#Preview {
    
    @State var loading = false
    
    return BaseBody(shouldScroll: .constant(false), showLoader: $loading) {
        HStack {
            Text("devAYZ")
            Spacer()
        }
    }
}

