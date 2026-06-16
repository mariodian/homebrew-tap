class Pincerd < Formula
  desc "Headless Pincer monitoring daemon for local AI agents"
  homepage "https://github.com/mariodian/pincer"
  url "https://github.com/mariodian/pincer/releases/download/v0.4.1/pincerd-v0.4.1-macos-arm64.tar.gz"
  sha256 "c175fa51971ce632ba2997afb90058a9e2602f69816618981f65190f8e78dc01"
  version "0.4.1"

  depends_on arch: :arm64

  def install
    bin.install "pincerd"
    pkgetc.install "drizzle/migrations"
  end

  service do
    run [opt_bin/"pincerd"]
    keep_alive true
    working_dir HOMEBREW_PREFIX
    log_path var/"log/pincerd.log"
    error_log_path var/"log/pincerd.log"
  end

  def caveats
    <<~EOS
      DAEMON_SECRET must be set before starting the service.

      1. Edit the plist:
           open #{opt_prefix}/homebrew.mxcl.pincerd.plist

      2. Add the following BEFORE the closing </dict> tag:

           <key>EnvironmentVariables</key>
           <dict>
             <key>DAEMON_SECRET</key>
             <string>your-secret-here</string>
           </dict>

      3. Start the service:
           brew services start pincerd
    EOS
  end
end
