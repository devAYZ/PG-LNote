//
//  View + Ext.swift
//  PG LNote
//
//  Created by Ayokunle Fatokimi on 28/07/2025.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

extension View {
    func alertButtonTint(color: Color) -> some View {
        modifier(AlertButtonTintColor(color: color))
    }
    
    func navigationBarView(title: String, hideLeftButton: Bool = false, leftButtonAction: (() -> ())? = nil) -> some View {
        self
            .overlay {
                NavigationBar(title: title, hideLeftButton: hideLeftButton, leftButtonAction: leftButtonAction)
            }
    }
    
    func showBottomModal<Content: View>(isPresented: Binding<Bool>, heightMultiplier: Binding<CGFloat>,
                                        @ViewBuilder content: @escaping () -> Content) -> some View {
        self
            .fullScreenCover(isPresented: isPresented) {
                //
            } content: {
                BottomModalContainer(heightMultiplier: heightMultiplier) {
                    content()
                }
            }
    }
    
    func transparentScrolling() -> some View {
        if #available(iOS 16.0, *) {
            return scrollContentBackground(.hidden)
        } else {
            return onAppear {
                UITextView.appearance().backgroundColor = .clear
            }
        }
    }
    
    func addKeyboardDoneAccessory() -> some View {
        self
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    GCTextButton(btnText: "Done") {
                        hideKeyboard()
                    }
                }
            }
    }
}

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, modifier: (Self) -> Content) -> some View {
        if condition {
            modifier(self)
        } else {
            self
        }
    }
}

struct AlertButtonTintColor: ViewModifier {
    let color: Color
    @State private var previousTintColor: UIColor?
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                previousTintColor = UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor
                UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor(color)
            }
            .onDisappear {
                UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = previousTintColor
            }
    }
}
