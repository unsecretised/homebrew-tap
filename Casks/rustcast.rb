cask "rustcast" do

  version "0.4.2"

  sha256 "7386e51eb60fd9e4cc734ed073aae353656104d3614f468b2cdaf4eb33f5cdc8"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
