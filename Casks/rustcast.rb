cask "rustcast" do
  arch arm: "aarch64-apple-darwin",
       intel: "x86_64-apple-darwin"

  version "0.2.3"

  sha256 arm:   "0cdf5ced76f048feea6458dacb0e9ce144dbb3eea3c0130ac40a485b965f288c",
         intel: "c62534c9012e2f90ce2b77a0c6b3eb39911774dc95a16ddf05f0cdbb6432e9a7"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/rustcast-#{arch}.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "Rustcast.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "/Applications/Rustcast.app/"],
                   sudo: false
  end
end
