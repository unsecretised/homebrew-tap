cask "rustcast" do

  version "0.4.0"

  sha256 "7926aaa217d3a6c4df509f4a64445e5172d570c834fb5b3e811a72e4edd850f1"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
