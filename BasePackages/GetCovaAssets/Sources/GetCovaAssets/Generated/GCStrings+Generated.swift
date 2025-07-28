// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum GCStrings {
  /// Get started
  public static let getStarted = GCStrings.tr("Localizable", "getStarted", fallback: "Get started")
  /// Login to your account
  public static let loginToYourAcc = GCStrings.tr("Localizable", "loginToYourAcc", fallback: "Login to your account")
  public enum General {
    /// Next
    public static let next = GCStrings.tr("Localizable", "general.next", fallback: "Next")
    /// Localizable.strings
    ///   GetCovaAssets
    /// 
    ///   Created by Ayokunle Fatokimi on 17/01/2025.
    public static let ok = GCStrings.tr("Localizable", "general.ok", fallback: "Ok")
    /// Okay
    public static let okay = GCStrings.tr("Localizable", "general.Okay", fallback: "Okay")
    /// Yes
    public static let yes = GCStrings.tr("Localizable", "general.yes", fallback: "Yes")
  }
  public enum Onboarding {
    /// Insurance Policy Management
    public static let slideTabTitle1 = GCStrings.tr("Localizable", "onboarding.slideTabTitle1", fallback: "Insurance Policy Management")
    /// Effortless Claims Submission
    public static let slideTabTitle2 = GCStrings.tr("Localizable", "onboarding.slideTabTitle2", fallback: "Effortless Claims Submission")
    /// Secure and Private
    public static let slideTabTitle3 = GCStrings.tr("Localizable", "onboarding.slideTabTitle3", fallback: "Secure and Private")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension GCStrings {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
