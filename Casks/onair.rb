cask "onair" do
  version "0.3.0"
  sha256 "1c1074bbd061b5940facd2e50f68a4bb574216064fa485d49d68fa73199cdff2"

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
