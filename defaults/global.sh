#!/usr/bin/env zsh
set -Eeuo pipefail
defaults write -g QLPanelAnimationDuration -float 0

defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Enable auto dark mode
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"
defaults write NSGlobalDomain AppleInterfaceStyleSwitchesAutomatically -bool true

# Set sidebar icon size to medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Disable the over-the-top focus ring animation
defaults write NSGlobalDomain NSUseAnimatedFocusRing -bool false

# Adjust toolbar title rollover delay
defaults write NSGlobalDomain NSToolbarTitleViewRolloverDelay -float 0

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Ask to keep changes when closing documents
defaults write NSGlobalDomain NSCloseAlwaysConfirmsChanges -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Play user interface sound effects
defaults write -globalDomain "com.apple.sound.uiaudio.enabled" -int 0

# Play feedback when volume is changed
defaults write -globalDomain "com.apple.sound.beep.feedback" -int 0

defaults write NSGlobalDomain AppleLanguages -array "en" 
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=USD"
# defaults write NSGlobalDomain AppleMeasurementUnits -string "Inches"
# defaults write NSGlobalDomain AppleMetricUnits -bool false

defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable Handoff between this Mac and your iCloud devices
defaults -currentHost write com.apple.coreservices.useractivityd "ActivityAdvertisingAllowed" -bool false
defaults -currentHost write com.apple.coreservices.useractivityd "ActivityReceivingAllowed" -bool false