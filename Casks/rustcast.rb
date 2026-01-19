cask "rustcast" do

  version "0.4.6-beta"

  sha256 "56807dde7d1fd6da731fc94e5799cbc8814f9bd0c34ca4014ed9ec8a69510c77"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
