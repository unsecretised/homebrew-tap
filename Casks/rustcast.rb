cask "rustcast" do
  arch arm: "aarch64-apple-darwin",
       intel: "x86_64-apple-darwin"

  version "0.2.9"

  sha256 arm:   "2ebf908295f77873de806dc974c7d704c3e71fe0f9be5090aacd8ac85282f78f",
         intel: "d81f5282298392a5101e8d7ed46ee7e1ab10772a7e17a24f9a22c9ad0c896361"

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
