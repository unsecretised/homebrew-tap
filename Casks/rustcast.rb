cask "rustcast" do

  version "0.7.0"

  sha256 "92e2bea4821c1b2cee7b15e0d54aee7dd56b8ed5a9057b21ab371e6308577de0"

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
