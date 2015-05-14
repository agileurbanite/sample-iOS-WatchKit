# TNS WatchKit App
This is an example with NativeScript for iOS and the WatchKit APIs.

## Walkthrough
To set up a project:
```bash
tns create project TNSWatchKitApp
cd TNSWatchKitApp
tns platform add ios
tns prepare ios
```

Open the Xcode project in `/platforms/ios/TNSWatchKitApp.xcodeproj`.
> **NOTE:** To manually set up a WatchKit extension with NativeScript you will have to work in Xcode. This is not supported from the CLI yet.

### Add WatchKit Extension
Go to `File > New > Target` and select `Apple Watch > WatchKit App`.
In the dialogue set:
 - [x] Include Notification Scene.
 - [x] Include Glance Scene.

### Xcode Quirks
##### Set the Deployment Target to iOS 8.2
Click on the TNSWathcKitApp to open the targets and set the deployment targets to **iOS8.2** in:
 - `Target TNSWathcKitApp WatchKit App > Build Settings > iOS Deployment Target`
> **NOTE:** This may change in future. I have the iOS8.3 SDK and my Xcode generates the WatchKit App extensions with deployment target set to iOS8.3.

##### Set Bundle Versions
I had CFBundleVersion missmatch in the Info.plist files in:
 - `TNSWathcKitApp WatchKit Extension > Supporting Files > Info.plist > ` (was '1.0')
 - `TNSWatchKitApp WatchKit App > Supporting Files > Info.plist > Bundle version` (was '1')
Just set it to '1.0' everywhere to perfectly match the version string.

##### Open the WatchKit simulator
Run `TNSWatchKitApp WatchKit App` in `iPhone 6` simulator. Select the simulator and show the watch display from: `Hardware > External Displays > Apple Watch - 42mm`.

It should be still blank.

### Add Some UI in the Storyboards
Click on the `TNSWatchKitApp > TNSWatchKitApp WatchKit App > Interface.storyboard` to open the interface builder.
From the widgets menu drag a label and a button on the small clock the "Main" arrow points to.

![AddUI](screenshots/AddUI.png)
