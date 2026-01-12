cask "rustcast" do

  version "0.3.8"

  sha256 "250a975043e47e74668ffea47941dd694733f62dfaf8473bdf81b3ba727fe53d"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
