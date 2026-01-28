cask "rustcast" do

  version "0.5.2-alpha"

  sha256 "9efc10085ae17cc1bed353ab44b3edc4639fe3e1339294fb488e6436eb7f610e"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :big_sur"

  app "target/release/macos/Rustcast.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
