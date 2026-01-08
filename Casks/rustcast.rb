cask "rustcast" do

  version "0.3.4"

  sha256 "b69d3da7b1f39a807f3551e53bd9bb79c81c45be72ac6a3ec06929b445d3702b"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
