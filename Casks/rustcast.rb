cask "rustcast" do

  version "0.3.5"

  sha256 "8c04dace684c9123ad25870e2ada321c86ebc058774b57748696e79d98f2b779"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Utility tooling for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "target/release/macos/Rustcast.app"

end
