cask "rustcast" do

  version "0.6.0-alpha"

  sha256 "239962c2de2e285288b51e5a455cedcf367de1591960c68c0fd8e04388c69890"

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
