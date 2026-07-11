cask "rustcast" do
  version "0.8.3"
  sha256 "1d5848a92e0e3fc0770871dd7bea92e34ea5b3dd3a33546ccc3dce0131e980ff"

  url "https://github.com/RustCastLabs/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip"
  name "Rustcast"
  desc "Application and utility launcher"
  homepage "https://rustcast.app"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "target/release/macos/Rustcast.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/rustcast_*.plist",
    "~/Library/Logs/DiagnosticReports/rustcast-*.ips",
    "~/Library/Preferences/com.*.rustcast.plist",
    "~/Library/Preferences/rustcast.plist",
    "~/.config/rustcast/config.toml",
    "/tmp/rustcast.log",
  ]
end
