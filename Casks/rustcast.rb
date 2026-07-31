cask "rustcast" do
  version "0.8.5"
  sha256 "77ca6160adbfa38adcf8a2ae83e4484c95ce38ceb5b47d21fe45076029c12802"

  url "https://github.com/MystikoLab/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
    verified: "github.com/MystikoLab/rustcast"
  name "Rustcast"
  desc "Application and utility launcher"
  homepage "https://rustcast.app"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :ventura

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
