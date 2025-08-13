# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview
This is a SwiftUI-based iOS/macOS application built with Xcode 15.3. The project structure follows Apple's standard SwiftUI app template with both command-line and GUI components.

## Key Components
- **MyFirstSwiftAppApp.swift**: Main app entry point using SwiftUI's `@main` attribute
- **ContentView.swift**: Primary SwiftUI view with basic UI elements (globe icon, "Hello, world!" text)
- **main.swift**: Command-line component with `sayHello(name:)` function that demonstrates Swift basics with Ukrainian comments

## Build and Run Commands

### Xcode Project
```bash
# Build the project
xcodebuild -project MyFirstSwiftApp.xcodeproj -scheme MyFirstSwiftApp build

# Run on simulator
xcodebuild -project MyFirstSwiftApp.xcodeproj -scheme MyFirstSwiftApp -destination 'platform=iOS Simulator,name=iPhone 15' build

# Clean build folder
xcodebuild -project MyFirstSwiftApp.xcodeproj clean
```

### Command Line Swift
```bash
# Run the standalone Swift file
swift main.swift
```

## Platform Support
- **iOS**: Minimum deployment target 17.4
- **macOS**: Minimum deployment target 14.2  
- **Swift Version**: 5.0
- **Supported Platforms**: iPhone, iPad, Mac

## Project Configuration
- **Bundle ID**: bundle.MyFirstSwiftApp
- **Code Signing**: Automatic
- **SwiftUI Previews**: Enabled
- **Asset Catalogs**: AppIcon and AccentColor configured
- **Entitlements**: MyFirstSwiftApp.entitlements file present

## Architecture Notes
- Uses SwiftUI declarative UI framework
- Follows MVVM pattern with View structs
- Preview support enabled for rapid UI development
- Mixed Ukrainian/English codebase (main.swift contains Ukrainian comments)

## Development Workflow
1. Open MyFirstSwiftApp.xcodeproj in Xcode for GUI development
2. Use Xcode's built-in simulator for testing
3. Command-line Swift execution available via `swift main.swift`
4. SwiftUI previews provide instant UI feedback during development