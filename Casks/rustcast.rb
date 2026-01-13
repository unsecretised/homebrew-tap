cask "rustcast" do

  version "0.3.9"

  sha256 "e28e883de21d3341310053dde881ca77fde850ef06a92bf83a193bce7ccfbee3"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
