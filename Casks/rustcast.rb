cask "rustcast" do
  arch arm: "aarch64-apple-darwin"

  version "0.1.2"
  sha256 arm: "756a4d5d21970d621502def0bfdbfdf0679870ee530f0337264f1ebd34dc4a97"

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
