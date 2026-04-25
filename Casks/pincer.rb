cask "pincer" do
  version "0.3.5"
  sha256 "dae5d78e655de8b90676382eaf221d90a7d5e867ae39869e14c183719a05be3a"

  url "https://github.com/mariodian/pincer/releases/download/v#{version}/stable-macos-arm64-Pincer.dmg"
  name "Pincer"
  desc "Desktop monitoring for local AI agents"
  homepage "https://github.com/mariodian/pincer"

  depends_on arch: :arm64

  app "Pincer.app"

  uninstall quit: "com.mariodian.pincer"

  zap trash: [
    "~/Library/Application Support/com.mariodian.pincer",
    "~/Library/Caches/com.mariodian.pincer",
  ]
end
