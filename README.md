# ModuleProgressHUD

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ModuleProgressHUD is available through CocoaPods. 

```
pod search ModuleProgressHUD

# -> ModuleProgressHUD (1.0.9)
# Module ProgressHUD wrap lib with quick usage and style settings.
# pod 'ModuleProgressHUD', '~> 1.0.9'
# - Homepage: https://github.com/blodely/ModuleProgressHUD
# - Source:   https://github.com/blodely/ModuleProgressHUD.git
# - Versions: 1.0.9 [master repo]
```

To install
it, simply add the following line to your Podfile:

```ruby
pod "ModuleProgressHUD"
```

## Usage

### style auto configuration

Copy `conf-progress-hud.plist` file to your project, and make desired changes.

Call `[ModuleProgressHUD autoConfigure]`; once in app delegate.

### show message with format string

```

# show message with format string
+showErrorWithFormatStatus:...
+showSuccessWithFormatStatus:...

# show message only when there's a hud view already in display
+tryToShowErrorWithFormatStatus:...

# show a message string with delay
+showMessage:withDelay:

# show a progress pie and hide it
+showProgressHideAfter:
```

## Author

骆昱, indie.luo@gmail.com

## License

ModuleProgressHUD is available under the MIT license. See the LICENSE file for more info.

