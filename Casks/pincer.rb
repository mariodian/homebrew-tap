cask "pincer" do
  version "0.3.1"

  # Only Apple Silicon (ARM64) builds are released; no Intel (x86_64) build is available.
  on_arm do
    sha256 "261be2a040ec5eb5f6771d192a91618f2a1859eec22c42254661d5e5aab4d0b7"
    url "https://github.com/mariodian/pincer/releases/download/v#{version}/stable-macos-arm64-Pincer.dmg"
  end

  name "Pincer"
  desc "Desktop monitoring for local AI agents"
  homepage "https://github.com/mariodian/pincer"

  # Requires macOS 13 (Ventura) or later per the official installation requirements.
  depends_on macos: ">= :ventura"

  app "Pincer.app"

  zap trash: [
    "~/Library/Application Support/Pincer",
    "~/Library/Caches/com.mariodian.pincer",
    "~/Library/Logs/Pincer",
  ]
end
