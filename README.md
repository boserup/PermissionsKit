# PermissionsKit 

> **It was called `SPPermissions`, what happen?** I put together a team that deals with opensource and gave the library to the company. It is now under a universal clean name. It will help develop the library more actively, even when I can't do it myself. Now I am doing 9 version with more permissions and new interface. Share with me your ideas.

Universal API for querying the rarefaction and getting the current status `.authorized`, `.denied` & `.notDetermined`. Availalbe three ready-use interface - list, dialog & native. Supports iPad, dark mode and has ready localizations.

<p float="left">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/camera.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/photos.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/notifications.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/location.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/microphone.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/calendar.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/contacts.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/reminders.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/motion.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/music.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/speech.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/bluetooth.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/health.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/tracking.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/faceid.png" width="38">
    <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/siri.png" width="38">
</p>

### Community

<p float="left">
    <a href="https://discord.gg/BfZQUG6pnh">
        <img src="https://cdn.sparrowcode.io/github/badges/discord.png?version=2" height="52">
    </a>
    <a href="#apps-using">
        <img src="https://cdn.sparrowcode.io/github/badges/download-on-the-appstore.png?version=2" height="52">
    </a>
    <a href="https://github.com/sponsors/sparrowcode">
        <img src="https://cdn.sparrowcode.io/github/badges/github-sponsor.png?version=3" height="52">
    </a>
</p>

## Navigate

- [Permissions](#permissions)
- [Installation](#installation)
    - [Swift Package Manager](#swift-package-manager)
    - [CocoaPods](#cocoapods)
- [Request & Status](#request--status)
- [Ready-use Interface](#ready-use-interface)
    - [List](#list)
    - [Dialog](#dialog)
    - [Native](#native)
- [DataSource](#datasource)
    - [Denied alert](#denied-alert)
- [Delegate](#delegate)
- [Localizations](#localizations)
- [Keys in Info.plist](#keys-in-infoplist)
- [Apple Review](#apple-review)
- [Apps Using](#apps-using)

### Permissions

| Icon |  Permission | Key for `Info.plist` | Get Status | Make Request |
| :--: | :---------- | :------------------- | :--------: | :----------: |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/bluetooth.png" width="38"> | Bluetooth | NSBluetoothAlwaysUsageDescription, NSBluetoothPeripheralUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/calendar.png" width="38"> | Calendar | NSCalendarsUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/camera.png" width="38"> | Camera | NSCameraUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/contacts.png" width="38"> | Contacts | NSContactsUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/faceid.png" width="38"> | FaceID | NSFaceIDUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/health.png" width="38"> | Health | NSHealthUpdateUsageDescription, NSHealthShareUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/location.png" width="38"> | Location Always | NSLocationAlwaysAndWhenInUseUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/location.png" width="38"> | Location When In Use | NSLocationWhenInUseUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/music.png" width="38"> | Media Library | NSAppleMusicUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/microphone.png" width="38"> | Microphone | NSMicrophoneUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/motion.png" width="38"> | Motion | NSMotionUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/notifications.png" width="38"> | Notification | | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/photos.png" width="38"> | Photo Library | NSPhotoLibraryUsageDescription, NSPhotoLibraryAddUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/reminders.png" width="38"> | Reminders | NSRemindersUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/siri.png" width="38"> | Siri | NSSiriUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/speech.png" width="38"> | Speech Recognizer | NSSpeechRecognitionUsageDescription | ✅ | ✅ |
| <img src="https://cdn.sparrowcode.io/github/permissionskit/icons/tracking.png" width="38"> | Tracking | NSUserTrackingUsageDescription | ✅ | ✅ |

## Installation

Ready to use on iOS 11+. Supports iOS, tvOS, and `SwiftUI`.

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

Once you have your Swift package set up, adding as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/sparrowcode/PermissionsKit", .upToNextMajor(from: "8.0.0"))
]
```

Next choose the permissions you need. But don't add all of them, because apple [will reject app](#apple-review).

### CocoaPods:

This is an outdated way of doing things. I advise you to use [SPM](#swift-package-manager). However, I will continue to support Cocoapods for some time.

<details><summary>Cocoapods Instalation</summary>

[CocoaPods](https://cocoapods.org) is a dependency manager. For usage and installation instructions, visit their website. To integrate using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'PermissionsKit/NotificationPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
```

Due to Apple's new policy regarding permission access you need to specifically define what kind of permissions you want to access using subspecs.

```ruby
pod 'PermissionsKit/CameraPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/ContactsPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/CalendarPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/PhotoLibraryPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/NotificationPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/MicrophonePermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/RemindersPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/SpeechRecognizerPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/LocationWhenInUsePermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/LocationAlwaysPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/MotionPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/MediaLibraryPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/BluetoothPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/TrackingPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/FaceIDPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/SiriPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
pod 'PermissionsKit/HealthPermission', :git => 'https://github.com/sparrowcode/PermissionsKit'
```
</details>

## Request & Status

```swift
import PermissionsKit
import NotificationPermission

// Request permission.
Permission.notification.request {
    
    // Get status
    let authorized = Permission.notification.authorized
}
```

## Ready-use Interface

`PermissionsKit` has three presentation styles: `Dialog`, `List` and `Native`. Each interface has delegates and a data source. If you want see an example app, open `Example Apps/PermissionsKit.xcodeproj`.

### List

<img align="left" src="https://cdn.sparrowcode.io/github/permissionskit/v8/list-style.png?version=1" height="340"/>

It's native `UITableViewController`. Use it when you have more than two permissions. An example of how it is used:

```swift
let controller = PermissionsKit.list([.calendar, .camera, .contacts])

// Ovveride texts in controller
controller.titleText = "Title Text"
controller.headerText = "Header Text"
controller.footerText = "Footer Text"

// Set `DataSource` or `Delegate` if need. 
// By default using project texts and icons.
controller.dataSource = self
controller.delegate = self

// If you want auto dismiss controler,
// when all permissions has any determinated state
// set dismiss mode `allPermissionsDeterminated`.
// By default dismiss controller happen only when all permission allowed.
controller.dismissCondition = .allPermissionsDeterminated

// Always use this method for present
controller.present(on: self)
```

### Dialog

<img align="left" src="https://cdn.sparrowcode.io/github/permissionskit/v8/dialog-style.png?version=1" height="340"/>

This is a modal alert. I recommend using this alert style when you have less than three requested permissions. Usage example:

```swift
let controller = PermissionsKit.dialog([.camera, .photoLibrary])

// Override texts in controller
controller.titleText = "Title Text"
controller.headerText = "Header Text"
controller.footerText = "Footer Text"

// Set `DataSource` or `Delegate` if need. 
// By default using project texts and icons.
controller.dataSource = self
controller.delegate = self

// If you want auto dismiss controler,
// when all permissions has any determinated state
// set dismiss mode `allPermissionsDeterminated`.
// By default dismiss controller happen only when all permission allowed.
controller.dismissCondition = .allPermissionsDeterminated

// Always use this method for present
controller.present(on: self)
```

### Native

<img align="left" src="https://cdn.sparrowcode.io/github/permissionskit/v8/native-request.png?version=2" height="240"/>

Request permissions with native `UIAlertController`. You can request many permissions at once:

```swift
let controller = PermissionsKit.native([.calendar, .camera, .contacts])

// Set `Delegate` if need. 
controller.delegate = self

// Always use this method for request. 
controller.present(on: self)
```

## DataSource

For data source using protocol `PermissionsDataSource`. You can customize the permission cells and provide denied alert texts.

```swift
extension Controller: PermissionsDataSource {
    
    func configure(_ cell: PermissionTableViewCell, for permission: Permission) {
        
        // Here you can customise cell, like texts or colors.
        cell.permissionTitleLabel.text = "Title"
        cell.permissionDescriptionLabel.text = "Description"
        
        // If you need change icon, choose one of this:
        cell.permissionIconView.setPermissionType(.bluetooth)
        cell.permissionIconView.setCustomImage(UIImage.init(named: "custom-name"))
        cell.permissionIconView.setCustomView(YourView())
    }
}
```

### Denied alert

If a permission is denied, you can provide an alert to the user with an option to open settings. An example of how you can customise the alert text:

```swift
let texts = PermissionDeniedAlertTexts()
texts.titleText = "Permission denied"
texts.descriptionText = "Please, go to Settings and allow permission."
texts.actionText = "Settings"
texts.cancelText = "Cancel"
```

Next implement the following method and return:

```swift
func deniedPermissionAlertTexts(for permission: Permission) -> PermissionDeniedAlertTexts? {
    
    // Custom texts:
    return texts
    
    // or default texts:
    // return .default
}
```

## Delegate

To get `hidden`, `allowed` or `denied` events , set the delegate with protocol `PermissionsDelegate`:

```swift
extension Controller: PermissionsDelegate {
    
    func didHidePermissions(_ permissions: [Permission]) {}
    func didAllowPermission(_ permission: Permission) {}
    func didDeniedPermission(_ permission: Permission) {}
}
```

## Localizations

`PermissionsKit` has ready-to-use localizations for:

- English `en`
- Arabic `ar`
- Danish `da`
- German `de`
- Spanish `es`
- French `fr`
- Polish `pl`
- Portuguese `pt`
- Ukrainian `uk`
- Russian `ru`
- Chinese Simplified Han `zh_Hans`
- Italian `it`
- Chinese Traditional `zh_Hant`
- Persian `fa`

If you want to add more, please, create folder `[language_id].lproj` and make a pull request. If you want to use your custom strings, check the [DataSource](#datasource) section.

## Keys in Info.plist

You need to add some keys to the `Info.plist` file with descriptions, per Apple's requirement(s). You can get a plist of keys for permissions as follows:

```swift
let key = Permission.bluetooth.usageDescriptionKey
```

Do not use the description as the name of the key.

If you use xliff localization export, keys will be create automatically. If you prefer do the localization file manually, you need to create `InfoPlist.strings`, select languages on the right side menu and add keys as keys in plist-file. See:

```
"NSCameraUsageDescription" = "Here description of usage camera";
```

## Apple Review

Apple changed its review guidelines in June 2021. When requesting permissions, apps should require users to always request and make a decision whether to allow or decline the permission. For this reason, the close button in `PermissionsKit` is hidden by default. If you want to force show the close button, run the following code:

```swift
// Show & hide close button
controller.showCloseButton = true

// Enable or Disable drag intercation
controller.allowSwipeDismiss = true
```

Also changed title for button. Instead of  `allow` now using `continue`. The Apple Review Team asked for this. For details, check out [this issue](https://github.com/sparrowcode/PermissionsKit/issues/229).

## Apps Using

<p float="left">
    <a href="https://apps.apple.com/app/id1487937127"><img src="https://cdn.sparrowcode.io/github/apps-using/craft.png?version=2" height="65"></a>
    <a href="https://apps.apple.com/app/id1624477055"><img src="https://cdn.sparrowcode.io/github/apps-using/seqvoia.png?version=2" height="65"></a>
    <a href="https://apps.apple.com/app/id875280793"><img src="https://cdn.sparrowcode.io/github/apps-using/salat.png?version=2" height="65"></a>
    <a href="https://apps.apple.com/app/id743843090"><img src="https://cdn.sparrowcode.io/github/apps-using/athan.png?version=2" height="65"></a>
    <a href="https://apps.apple.com/app/id537070378"><img src="https://cdn.sparrowcode.io/github/apps-using/quran.png?version=2" height="65"></a>
    <a href="https://apps.apple.com/app/id1596657751"><img src="https://cdn.sparrowcode.io/github/apps-using/run-tracker.png?version=2" height="65"></a>
    <a href="https://apps.apple.com/app/id1570676244"><img src="https://cdn.sparrowcode.io/github/apps-using/debts.png?version=2" height="65"></a>
</p>
