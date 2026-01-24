cask "rustcast" do

  version "0.5.0"

  sha256 "63a13d2c533c029535c3ca376d9fb783b59a3fcb9116e0cfb37342710b5f7d5c"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
