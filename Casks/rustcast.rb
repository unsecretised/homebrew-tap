cask "rustcast" do

  version "0.6.7"

  sha256 "7e1ce86cc7a196ba3c69c8b63f78b69f56146637af165e307b4b7dc7d5f92c7b"

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
