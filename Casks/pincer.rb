cask "pincer" do
  version "0.4.3"
  sha256 "f48fd419aeb8b7908d8f5e98c4c0fa07de884b5e2f926d5fcf57b5eef95b6867"

  url "https://github.com/mariodian/pincer/releases/download/v#{version}/macos-arm64-Pincer.dmg"
  name "Pincer"
  desc "Desktop monitoring for local AI agents"
  homepage "https://github.com/mariodian/pincer"

  depends_on arch: :arm64

  app "Pincer.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Pincer.app"]
  end

  uninstall quit: "com.mariodian.pincer"

  zap trash: [
    "~/Library/Application Support/com.mariodian.pincer",
    "~/Library/Caches/com.mariodian.pincer",
  ]
end
