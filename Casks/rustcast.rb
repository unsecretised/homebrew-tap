cask "rustcast" do

  version "0.4.6"

  sha256 "60e8db2057848596cd23135bf493c1de55f7418b7d95465d61dee984f5c3ec84"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
