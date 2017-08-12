# ModuleProgressHUD

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ModuleProgressHUD is available through [Private CocoaPods](https://github.com/blodely/LYSpecs). 

```
pod repo add LYSpecs https://github.com/blodely/LYSpecs.git
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

+showMessage:withDelay:
+showProgressHideAfter:
```

## Author

骆昱, indie.luo@gmail.com

## License

ModuleProgressHUD is available under the MIT license. See the LICENSE file for more info.

