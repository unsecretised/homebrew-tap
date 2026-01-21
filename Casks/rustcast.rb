cask "rustcast" do

  version "0.4.7"

  sha256 "a0d5c6848349839cb2f442f4b4fc10c223fb5bb140b8d2aeb70e56a0ff9da8f7"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
