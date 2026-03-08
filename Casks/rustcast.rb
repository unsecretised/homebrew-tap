cask "rustcast" do

  version "0.6.1"

  sha256 "fc238e41ff152a050e913fb202bc2bd3df22fc89dfc85cd3a66c340df31ccb3d"

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
