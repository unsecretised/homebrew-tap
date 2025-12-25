cask "rustcast" do
  arch arm: "aarch64-apple-darwin",
       intel: "x86_64-apple-darwin"

  version "0.1.7"

  sha256 arm:   "6d6b4c15c416212148e5764aec95fd1ade8fc9cc5d19b99992c652d5d0ea3cc8",
         intel: "97b9f8b3dcf1eb976c145dc18851592f86974d290b45d1a4560e9c370b03efcd"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/rustcast-#{arch}.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Google search for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "Rustcast.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "/Applications/Rustcast.app/"],
                   sudo: false
  end
end
