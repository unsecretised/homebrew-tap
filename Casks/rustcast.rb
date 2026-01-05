cask "rustcast" do
  arch arm: "aarch64-apple-darwin",
       intel: "x86_64-apple-darwin"

  version "0.2.7"

  sha256 arm:   "ce38fd62975b760baa18ed66bd45ec4fd32126208aed0379a1dd208da8cf0646",
         intel: "05f7c7be1bcc93f7a7c95bad5fd7485c18eba59fb06b79a1d746c516e148e049"

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
