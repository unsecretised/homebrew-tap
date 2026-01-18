cask "rustcast" do

  version "0.4.4"

  sha256 "7e3a2e53fb1f7a06836ff30e7ed438fec5d7cf2a826c65f0c2217e9d99aa22d9"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
