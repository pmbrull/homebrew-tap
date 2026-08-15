cask "onair" do
  version "0.2.0"
  sha256 "1e15c449521c81100943b2fd24d7237b2faa7aae5e3b6da88cdba6368e44ec1a"

  url "https://github.com/pmbrull/OnAir/releases/download/v#{version}/OnAir-#{version}.zip"
  name "OnAir"
  desc "Menu-bar app that sets your Slack status when your camera turns on"
  homepage "https://github.com/pmbrull/OnAir"

  depends_on macos: :sequoia

  app "OnAir.app"

  uninstall quit: "io.umamidata.onair"

  zap trash: [
    "~/Library/Application Support/OnAir",
    "~/Library/Preferences/io.umamidata.onair.plist",
  ]

  caveats <<~EOS
    Your Slack token lives in the macOS Keychain, which uninstalling — even with
    --zap — does not touch. To remove it too, open Keychain Access and delete the
    items whose service is "io.umamidata.onair".
  EOS
end
