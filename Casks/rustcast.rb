cask "rustcast" do

  version "0.7.0-beta"

  sha256 "a787b3f1be46d0e4c73bbb29bf8901447f2bc843d9dce7387c62c8974b9bd985"

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
