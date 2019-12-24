//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map(Locale.init)
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.file` struct is generated, and contains static references to 4 files.
  struct file {
    /// Resource file `Platform.json`.
    static let platformJson = Rswift.FileResource(bundle: R.hostingBundle, name: "Platform", pathExtension: "json")
    /// Resource file `Vipwebsites.json`.
    static let vipwebsitesJson = Rswift.FileResource(bundle: R.hostingBundle, name: "Vipwebsites", pathExtension: "json")
    /// Resource file `blank.caf`.
    static let blankCaf = Rswift.FileResource(bundle: R.hostingBundle, name: "blank", pathExtension: "caf")
    /// Resource file `index.html`.
    static let indexHtml = Rswift.FileResource(bundle: R.hostingBundle, name: "index", pathExtension: "html")

    /// `bundle.url(forResource: "Platform", withExtension: "json")`
    static func platformJson(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.platformJson
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Vipwebsites", withExtension: "json")`
    static func vipwebsitesJson(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.vipwebsitesJson
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "blank", withExtension: "caf")`
    static func blankCaf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.blankCaf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "index", withExtension: "html")`
    static func indexHtml(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.indexHtml
      return fileResource.bundle.url(forResource: fileResource)
    }

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 21 images.
  struct image {
    /// Image `icon_cell_check`.
    static let icon_cell_check = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_check")
    /// Image `icon_cell_dir`.
    static let icon_cell_dir = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_dir")
    /// Image `icon_cell_disclosure`.
    static let icon_cell_disclosure = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_disclosure")
    /// Image `icon_cell_night_mode`.
    static let icon_cell_night_mode = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_night_mode")
    /// Image `icon_cell_theme`.
    static let icon_cell_theme = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_cell_theme")
    /// Image `icon_common_select`.
    static let icon_common_select = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_common_select")
    /// Image `icon_day`.
    static let icon_day = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_day")
    /// Image `icon_navigation_back`.
    static let icon_navigation_back = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_back")
    /// Image `icon_navigation_close`.
    static let icon_navigation_close = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_close")
    /// Image `icon_navigation_forward`.
    static let icon_navigation_forward = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_forward")
    /// Image `icon_navigation_refresh`.
    static let icon_navigation_refresh = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_refresh")
    /// Image `icon_navigation_stop`.
    static let icon_navigation_stop = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_stop")
    /// Image `icon_navigation_theme`.
    static let icon_navigation_theme = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_theme")
    /// Image `icon_navigation_web`.
    static let icon_navigation_web = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_navigation_web")
    /// Image `icon_night`.
    static let icon_night = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_night")
    /// Image `icon_tabbar_search`.
    static let icon_tabbar_search = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_search")
    /// Image `icon_tabbar_settings`.
    static let icon_tabbar_settings = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_tabbar_settings")
    /// Image `icon_vip`.
    static let icon_vip = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_vip")
    /// Image `icon_whatsnew_theme`.
    static let icon_whatsnew_theme = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_whatsnew_theme")
    /// Image `icon_whatsnew_whats_new`.
    static let icon_whatsnew_whats_new = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_whatsnew_whats_new")
    /// Image `pic_common_404`.
    static let pic_common_404 = Rswift.ImageResource(bundle: R.hostingBundle, name: "pic_common_404")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_check", bundle: ..., traitCollection: ...)`
    static func icon_cell_check(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_check, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_dir", bundle: ..., traitCollection: ...)`
    static func icon_cell_dir(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_dir, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_disclosure", bundle: ..., traitCollection: ...)`
    static func icon_cell_disclosure(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_disclosure, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_night_mode", bundle: ..., traitCollection: ...)`
    static func icon_cell_night_mode(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_night_mode, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_cell_theme", bundle: ..., traitCollection: ...)`
    static func icon_cell_theme(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_cell_theme, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_common_select", bundle: ..., traitCollection: ...)`
    static func icon_common_select(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_common_select, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_day", bundle: ..., traitCollection: ...)`
    static func icon_day(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_day, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_back", bundle: ..., traitCollection: ...)`
    static func icon_navigation_back(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_back, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_close", bundle: ..., traitCollection: ...)`
    static func icon_navigation_close(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_close, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_forward", bundle: ..., traitCollection: ...)`
    static func icon_navigation_forward(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_forward, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_refresh", bundle: ..., traitCollection: ...)`
    static func icon_navigation_refresh(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_refresh, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_stop", bundle: ..., traitCollection: ...)`
    static func icon_navigation_stop(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_stop, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_theme", bundle: ..., traitCollection: ...)`
    static func icon_navigation_theme(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_theme, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_navigation_web", bundle: ..., traitCollection: ...)`
    static func icon_navigation_web(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_navigation_web, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_night", bundle: ..., traitCollection: ...)`
    static func icon_night(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_night, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_search", bundle: ..., traitCollection: ...)`
    static func icon_tabbar_search(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_search, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_tabbar_settings", bundle: ..., traitCollection: ...)`
    static func icon_tabbar_settings(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_tabbar_settings, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_vip", bundle: ..., traitCollection: ...)`
    static func icon_vip(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_vip, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_whatsnew_theme", bundle: ..., traitCollection: ...)`
    static func icon_whatsnew_theme(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_whatsnew_theme, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_whatsnew_whats_new", bundle: ..., traitCollection: ...)`
    static func icon_whatsnew_whats_new(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_whatsnew_whats_new, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "pic_common_404", bundle: ..., traitCollection: ...)`
    static func pic_common_404(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.pic_common_404, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = LaunchViewController

      let bundle = R.hostingBundle
      let name = "Main"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}
