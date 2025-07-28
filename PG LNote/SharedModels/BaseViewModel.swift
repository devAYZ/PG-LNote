//
//  BaseViewModel.swift
//  PG LNote
//
//  Created by Ayokunle Fatokimi on 28/07/2025.
//

import SwiftUI


protocol DataManagerInjector {
    var dataManager: DataManager { get }
}

extension DataManagerInjector {
    var dataManager: DataManager {
        return DataManager.shared
    }
}

final class DataManager: ObservableObject {
    
    // MARK: Properties (User default)
    fileprivate static let shared = DataManager()
}


class BaseViewModel: ObservableObject, DataManagerInjector {
    
    // MARK: Properties
    static let shared_base = BaseViewModel()
    @Published var showLoader_base = false
    @Published var showCustomAlert_base = false
    
    @Published var showAlert_base = false
    @Published var showAlert_message: String?
    
    func handleShowLoader() {}
    
    func handleErrorResponse(_ data: Data?) -> String { "" }
    
    func formatSelectedDate(_ date: Date?) -> Binding<String> {
        guard let date = date else { return .constant("") }
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "dd-MM-yyyy"
        return .constant(inputFormatter.string(from: date))
    }
    
    func formatSelectedYear(_ date: Date?) -> Binding<String> {
        guard let date = date else { return .constant("") }
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "dd-MM-yyyy"
        let year = Calendar.current.component(.year, from: date)
        return .constant(String(year))
    }
}
