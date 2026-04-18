cask "pincer" do
  version "0.3.3"
  sha256 "fdc938ba4645bbe094ebc9f57fb80350fb0b968ed630a93dff8ab63816f02563"

  url "https://github.com/mariodian/pincer/releases/download/v#{version}/stable-macos-arm64-Pincer.dmg"
  name "Pincer"
  desc "Desktop monitoring for local AI agents"
  homepage "https://github.com/mariodian/pincer"

  depends_on arch: :arm64

  app "Pincer.app"

  uninstall quit:  "com.mariodian.pincer",
            delete: "/Applications/Pincer.app"

  zap trash: [
    "~/Library/Application Support/com.mariodian.pincer",
    "~/Library/Caches/com.mariodian.pincer",
  ]
end
