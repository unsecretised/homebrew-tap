cask "rustcast" do

  version "0.5.9"

  sha256 "e06afd9bcb9027778e1fa7d54b9084b3d7a5b6239904f8b6088bc4650fbca7f3"

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
