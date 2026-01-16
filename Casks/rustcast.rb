cask "rustcast" do

  version "0.4.3"

  sha256 "2b7ee9d390761bed39a41e2eb8f98e28c8007cf4652c465a8dc2af27793004b2"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
