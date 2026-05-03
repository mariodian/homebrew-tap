cask "pincer" do
  version "0.3.7"
  sha256 "d6b1fea08fed61747b262905ae3316e2db1b38021a58bbe5f32cf5aabee66aaf"

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
