cask "rustcast" do

  version "0.7.0-alpha"

  sha256 "14cf19a2671f37a63d2921d02f6ab82eb7c48dfe534ebc3c3276d2e73263a766"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip"

  name "Rustcast"
  desc "Utility tooling popup window for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :big_sur"

  app "target/release/macos/Rustcast.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
