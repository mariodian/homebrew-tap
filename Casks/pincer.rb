cask "pincer" do
  version "0.4.1"
  sha256 "956ded2da7f8172b02e17a09622f05b34d596d312fc695a9376efb54ade8969b"

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
