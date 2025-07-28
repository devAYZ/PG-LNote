//
//  DashboardView.swift
//  PG LNote
//
//  Created by Ayokunle Fatokimi on 28/07/2025.
//

import SwiftUI
import GetCovaAssets

struct DashboardView: View {
    
    @ObservedObject private var vmDashboard = DashboardViewModel.shared
    @State var selectedTab: SelectedTab = .home
    
    var body: some View {
        BaseBody(showLoader: $vmDashboard.showLoader_base) {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        Label { Text("Home")
                        } icon: {
                            GCAssets.Images.homeWhiteIcon.swiftUIImage
                                .renderingMode(.template)
                        }
                    }
                    .tag(SelectedTab.home)
                WalletView()
                    .tabItem {
                        Text("Wallet")
                        GCAssets.Images.walletWhiteIcon.swiftUIImage
                            .renderingMode(.template)
                    }
                    .tag(SelectedTab.wallet)
                MyAccountView()
                    .tabItem {
                        Text("My Account")
                        GCAssets.Images.accountWhiteIcon.swiftUIImage
                            .renderingMode(.template)
                    }
                    .tag(SelectedTab.account)
            }
            .background(GCAssets.Colors.backgroundGrey.swiftUIColor)
            .accentColor(.white)
            
        }
        .navigationBarHidden(true)
        .onAppear {
            UITabBar.appearance().backgroundColor = GCAssets.Colors.primaryBlue.color.withAlphaComponent(0.93) // default is white
            UITabBar.appearance().unselectedItemTintColor = UIColor(Color.gray)
            
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.backgroundColor = GCAssets.Colors.primaryBlue.color
            tabBarAppearance.configureWithTransparentBackground()
            tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.shadowImage = UIImage()
            tabBarAppearance.backgroundImage = UIImage()

            UITabBar.appearance().standardAppearance = tabBarAppearance
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }
}

#Preview {
    DashboardView()
}

struct HomeView: View {
    var body: some View {
        BaseBody(viewBgColor: GCAssets.Colors.backgroundGrey) {
            Text("HomeView")
        }
        .padding()
        .background(GCAssets.Colors.backgroundGrey.swiftUIColor.opacity(0.7))
        .overlay {
            NavigationBar(title: "Wallet", hideLeftButton: true)
        }
    }
}


struct WalletView: View {
    var body: some View {
        BaseBody(viewBgColor: GCAssets.Colors.backgroundGrey) {
            Text("WalletView")
        }
        .padding()
        .background(GCAssets.Colors.backgroundGrey.swiftUIColor.opacity(0.7))
        .overlay {
            NavigationBar(title: "Wallet", hideLeftButton: true)
        }
    }
}

struct MyAccountView: View {
    var body: some View {
        BaseBody(viewBgColor: GCAssets.Colors.backgroundGrey) {
            Text("MyAccountView")
        }
        .padding()
        .background(GCAssets.Colors.backgroundGrey.swiftUIColor.opacity(0.7))
        .overlay {
            NavigationBar(title: "Wallet", hideLeftButton: true)
        }
    }
}
