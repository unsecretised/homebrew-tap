cask "rustcast" do

  version "0.4.1"

  sha256 "c159f472ec00159fb4c705633679c57b6700bcc8f6e9976ab7b4a28d8c8d5cd1"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
