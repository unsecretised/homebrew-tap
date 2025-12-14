cask "rustcast" do
  arch arm: "aarch64-apple-darwin"

  version "0.1.1"
  sha256 arm: "d216bcde5d0a42646d922bce4f6bac33fc9b7f6afc354e92e31602657d3b52d4"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/rustcast-#{arch}.app.zip",
      verified: "github.com/unsecretised/rustcast/"
  name "Rustcast"
  desc "Google search for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "Rustcast.app"
  postflight do:
    system_command "/usr/bin/xattr",
      args: ["-cr", "/Applications/Rustcast.app/"],
      sudo: false
end
