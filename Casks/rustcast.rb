cask "rustcast" do
  arch arm: "aarch64-apple-darwin",
       intel: "x86_64-apple-darwin"

  version "0.3.3"

  sha256 arm:   "5efd53ee5ad2479b3fe01cb51b47d027492540fd908b291ba90b8a77630e0fd1",
         intel: "a6c3e50327222fa50febe5092cd0e72be1e5a96ec0dd6509bf716559f52533e2"

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
