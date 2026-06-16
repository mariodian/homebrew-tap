cask "pincer" do
  version "0.4.2"
  sha256 "cbd2285b9f93ac3f9dad05aff6ef3221aa8e4732c8ed5efc0ad2bfb9c916cc12"

  url "https://github.com/mariodian/pincer/releases/download/v#{version}/stable-macos-arm64-Pincer.dmg"
  name "Pincer"
  desc "Desktop monitoring for local AI agents"
  homepage "https://github.com/mariodian/pincer"

  depends_on arch: :arm64

  app "Pincer.app"

  uninstall quit: "com.mariodian.pincer"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/Pincer.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.mariodian.pincer",
    "~/Library/Caches/com.mariodian.pincer",
  ]
end
