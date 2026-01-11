cask "rustcast" do

  version "0.3.7"

  sha256 "f9dc6a63cb76bb9b8e268ea52ccb4353ad55c649baab12d328ed87471975dc12"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
