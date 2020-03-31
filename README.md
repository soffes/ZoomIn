<img src="Modules/ZoomIn/Resources/Assets.xcassets/AppIcon.appiconset/Mac-256.png" width="128">

# Zoom In

App with Safari extension that automatically opens Zoom and closes the tab when you try to open a meeting.

👉 **[Download the latest release](https://github.com/nothingmagical/ZoomIn/releases/download/v1.0.1/ZoomIn-1.0.1.zip)** 👈

## Privacy

Zoom In has 3 components: the [app](Modules/ZoomIn), the [native Safari extension](Modules/ZoomInExtension), and the [JavaScript Safari extension](Modules/ZoomInExtension/Resources/script.js). None of the components have permission from the system to make incoming or outgoing network connections. There isn’t any analytics or tracking or anything like that.

The app only shows information about how to use the extension and a button to open the extension’s prefernces in Safari.

The JavaScript component, can only access `*.zoom.us` pages. Zoom In is unaware of any other pages you navigate to. It can’t see them or track them or whatever else. All it does is look for the native Zoom URL and pass it along to its native counterpart.

The native Safari extension only handles messages from the JavaScript component. This simply opens the URL passed to it using standard macOS APIs. If this works, it uses the Safari extension API to close the tab. It doesn’t use any private APIs.

You can see all of the source code for the app here. Feel free to build it yourself (although please don’t redistribute it). If you have any questions, please open an issue on this repo. I’d be happy to answer them!

## Thanks

Icon glyphs by [i cons](https://thenounproject.com/term/video/3136011) and [Shashank Singh](https://thenounproject.com/term/zoom-in/2395378) from the Noun Project.
