cask "rustcast" do

  version "0.3.4-beta"

  sha256 "470661c6bbc90a6c58cc95cc059e5754e59c12ea1f4c278a27e0c58dac9057e3"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
