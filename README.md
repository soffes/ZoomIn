<img src="Modules/ZoomIn/Resources/Assets.xcassets/AppIcon.appiconset/Mac-256.png" width="128">

# Zoom In

### Safari extension to automatically open Zoom links

Are you Zooming all the time? Are you tired of telling Safari it’s okay to open Zoom links in Zoom? Have I got the app for you!

Zoom In is an app that installs a Safari extension. This extension does two things. **It automatically opens Zoom links in the Zoom app.** If that works, it will automatically close the tab so you don’t have tons of ”Opening in Zoom…“ tabs left in your browser.

Simple as that. **It’s free.** Enjoy!


👉 **[Download the latest release](https://github.com/nothingmagical/ZoomIn/releases/download/v1.0.3/ZoomIn-1.0.3.zip)** 👈

## Privacy

Zoom In has 3 components: the [app](Modules/ZoomIn), the [native Safari extension](Modules/ZoomInExtension), and the [JavaScript Safari extension](Modules/ZoomInExtension/Resources/script.js). None of the components have permission from the system to make incoming or outgoing network connections. There isn’t any analytics or tracking or anything like that.

The app only shows information about how to use the extension and a button to open the extension’s preferences in Safari.

The JavaScript component, can only access `*.zoom.us` pages. Zoom In is unaware of any other pages you navigate to. It can’t see them or track them or whatever else. All it does is look for the native Zoom URL on Zoom pages  and pass it along to its native counterpart.

The native Safari extension only handles messages from the JavaScript component. This simply opens the URL passed to it using standard macOS APIs. If this works, it uses the Safari extension API to close the tab. Again, no private APIs.

You can see all of the source code for the app here. Feel free to build it yourself (although please don’t redistribute it). If you have any questions, please open an issue on this repo. I’d be happy to answer them!

## Building

If you want to build Zoom In locally, you’ll need [Carthage](https://github.com/Carthage/Carthage) to gather the dependencies. The easiest way to install it is with [Homebrew](https://brew.sh): `brew install carthage`. Once you have it installed, run the following command:

```sh
$ carthage bootstrap
```

Now you can open the project in Xcode 11.3 or higher and build normally! Open an issue if you have any problems getting started!

## Thanks

Icon glyphs by [i cons](https://thenounproject.com/term/video/3136011) and [Shashank Singh](https://thenounproject.com/term/zoom-in/2395378) from the Noun Project.
