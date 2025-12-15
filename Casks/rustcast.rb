cask "rustcast" do
  arch arm: "aarch64-apple-darwin"

  version "0.1.2.1"
  sha256 arm: "afc5bcde831253a3ac7b7399b6695d0a58c6c516117383a026db0945f4faaea6"

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
