// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
public typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
public typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public enum GCAssets {
  public enum Colors {
    public static let backgroundGrey = ColorAsset(name: "backgroundGrey")
    public static let clear = ColorAsset(name: "clear")
    public static let deepGrey = ColorAsset(name: "deepGrey")
    public static let descriptionBlack = ColorAsset(name: "descriptionBlack")
    public static let grey = ColorAsset(name: "grey")
    public static let primaryBlack = ColorAsset(name: "primaryBlack")
    public static let primaryBlue = ColorAsset(name: "primaryBlue")
    public static let primaryGreen = ColorAsset(name: "primaryGreen")
    public static let primaryRed = ColorAsset(name: "primaryRed")
    public static let white = ColorAsset(name: "white")
  }
  public enum Images {
    public static let appLogoChecker = ImageAsset(name: "appLogoChecker")
    public static let appLogoMin = ImageAsset(name: "appLogoMin")
    public static let appLogoMinWhite = ImageAsset(name: "appLogoMinWhite")
    public static let appLogo = ImageAsset(name: "app_logo")
    public static let bioFace = ImageAsset(name: "bioFace")
    public static let bioFingerprint = ImageAsset(name: "bioFingerprint")
    public static let calendarIcon = ImageAsset(name: "calendarIcon")
    public static let checkedBox = ImageAsset(name: "checkedBox")
    public static let checkedBlack = ImageAsset(name: "checked_black")
    public static let accountWhiteIcon = ImageAsset(name: "accountWhiteIcon")
    public static let claimsGreyIcon = ImageAsset(name: "claimsGreyIcon")
    public static let claimsWhiteIcon = ImageAsset(name: "claimsWhiteIcon")
    public static let homeWhiteIcon = ImageAsset(name: "homeWhiteIcon")
    public static let policyWhiteIcon = ImageAsset(name: "policyWhiteIcon")
    public static let walletWhiteIcon = ImageAsset(name: "walletWhiteIcon")
    public static let carIcon = ImageAsset(name: "carIcon")
    public static let atmCardsIcon = ImageAsset(name: "atmCardsIcon")
    public static let bankBlackIcon = ImageAsset(name: "bankBlackIcon")
    public static let bankHouseIconDeep = ImageAsset(name: "bankHouseIconDeep")
    public static let breakingCircle = ImageAsset(name: "breakingCircle")
    public static let breakingCircleGray = ImageAsset(name: "breakingCircleGray")
    public static let carAuto = ImageAsset(name: "carAuto")
    public static let carCollision = ImageAsset(name: "carCollision")
    public static let carThirdParty = ImageAsset(name: "carThirdParty")
    public static let checklistNoteIcon = ImageAsset(name: "checklistNoteIcon")
    public static let circlesSetIcon = ImageAsset(name: "circlesSetIcon")
    public static let comprehensive = ImageAsset(name: "comprehensive")
    public static let health = ImageAsset(name: "health")
    public static let homeFront = ImageAsset(name: "homeFront")
    public static let noteIcon = ImageAsset(name: "noteIcon")
    public static let noteWithPenIcon = ImageAsset(name: "noteWithPenIcon")
    public static let personSlip = ImageAsset(name: "personSlip")
    public static let smartphoneIcon = ImageAsset(name: "smartphoneIcon")
    public static let successMarkBold = ImageAsset(name: "successMarkBold")
    public static let travelChecklist = ImageAsset(name: "travelChecklist")
    public static let userCardIcon = ImageAsset(name: "userCardIcon")
    public static let logoCorner = ImageAsset(name: "logo_corner")
    public static let logoCornerInverted = ImageAsset(name: "logo_corner_inverted")
    public static let mail = ImageAsset(name: "mail")
    public static let mailIcon = ImageAsset(name: "mailIcon")
    public static let bankFrontIcon = ImageAsset(name: "bankFrontIcon")
    public static let bankHouseIcon = ImageAsset(name: "bankHouseIcon")
    public static let cardsIcon = ImageAsset(name: "cardsIcon")
    public static let lockIcon = ImageAsset(name: "lockIcon")
    public static let pieIcon = ImageAsset(name: "pieIcon")
    public static let questionIcon = ImageAsset(name: "questionIcon")
    public static let userColoredIcon = ImageAsset(name: "userColoredIcon")
    public static let walletIcon = ImageAsset(name: "walletIcon")
    public static let nigeriaFlag = ImageAsset(name: "nigeria_flag")
    public static let padlock = ImageAsset(name: "padlock")
    public static let padlockIcon = ImageAsset(name: "padlockIcon")
    public static let phoneIcon = ImageAsset(name: "phoneIcon")
    public static let backArrowWhite = ImageAsset(name: "backArrowWhite")
    public static let calculatorIcon = ImageAsset(name: "calculatorIcon")
    public static let cameraCircleIcon = ImageAsset(name: "cameraCircleIcon")
    public static let cameraIcon = ImageAsset(name: "cameraIcon")
    public static let cardsBlackIcon = ImageAsset(name: "cardsBlackIcon")
    public static let checkMarkBlue = ImageAsset(name: "checkMarkBlue")
    public static let emptyNoteIcon = ImageAsset(name: "emptyNoteIcon")
    public static let filterIcon = ImageAsset(name: "filterIcon")
    public static let formFillIcon = ImageAsset(name: "formFillIcon")
    public static let forwardArrow = ImageAsset(name: "forwardArrow")
    public static let homeIcon = ImageAsset(name: "homeIcon")
    public static let leadwayIcon = ImageAsset(name: "leadwayIcon")
    public static let locationPinIcon = ImageAsset(name: "locationPinIcon")
    public static let luggageIcon = ImageAsset(name: "luggageIcon")
    public static let notificationIcon = ImageAsset(name: "notificationIcon")
    public static let numberStackIcon = ImageAsset(name: "numberStackIcon")
    public static let searchIcon = ImageAsset(name: "searchIcon")
    public static let shieldCheckIcon = ImageAsset(name: "shieldCheckIcon")
    public static let sortIcon = ImageAsset(name: "sortIcon")
    public static let userInfoIcon = ImageAsset(name: "userInfoIcon")
    public static let slideTabImage1 = ImageAsset(name: "slideTabImage1")
    public static let slideTabImage2 = ImageAsset(name: "slideTabImage2")
    public static let slideTabImage3 = ImageAsset(name: "slideTabImage3")
    public static let successMark = ImageAsset(name: "successMark")
    public static let uncheckedBox = ImageAsset(name: "uncheckedBox")
    public static let userIcon = ImageAsset(name: "userIcon")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public final class ColorAsset: Sendable {
  public let name: String

  #if os(macOS)
  public typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  public let color: Color

  #if os(iOS) || os(tvOS)
  @available(iOS 11.0, tvOS 11.0, *)
  public func color(compatibleWith traitCollection: UITraitCollection) -> Color {
    let bundle = BundleToken.bundle
    guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  public var swiftUIColor: SwiftUI.Color {
    SwiftUI.Color(uiColor: color)
  }
  #endif

  fileprivate init(name: String) {
    self.name = name
    guard let color = Color(assetName: name) else {
      fatalError("Unable to load color asset named \(name).")
    }
    self.color = color
  }
}

public extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(assetName: String) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: assetName, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(assetName), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: assetName)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
public extension SwiftUI.Color {
  init(assetName: String) {
    let bundle = BundleToken.bundle
    self.init(assetName, bundle: bundle)
  }
}
#endif

public struct ImageAsset: Sendable {
  public let name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  public var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  public func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  public var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

public extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
public extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

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
