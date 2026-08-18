cask "onair" do
  version "0.4.0"
  sha256 "5d3f8796eb7e296fde5bbe05aabd8339448b24c8b70db96acfab551686456945"

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
