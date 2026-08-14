cask "onair" do
  version "0.1.0"
  sha256 "c0f2ad258fcce5cfadfd249391f46da204f03b9aaf1d7239a1a72d441195eef6"

  url "https://github.com/pmbrull/OnAir/releases/download/v#{version}/OnAir-#{version}.zip"
  name "OnAir"
  desc "Menu-bar app that sets your Slack status when your camera turns on"
  homepage "https://github.com/pmbrull/OnAir"

  depends_on macos: ">= :sequoia"

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
