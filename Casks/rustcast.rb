cask "rustcast" do
  arch arm: "aarch64-apple-darwin",
       intel: "x86_64-apple-darwin"

  version "0.2.8"

  sha256 arm:   "46f31ad2d234eda52e7a7ecee74a66ad46205d8e95daf8074f4a4da3fc6eb989",
         intel: "cbaf3d9fdd2d3e56fa5c100c54d8425d99e2ac1f3ac4a2ef4e8ba7eaa3fe81fc"

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
