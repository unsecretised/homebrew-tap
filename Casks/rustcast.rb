cask "rustcast" do

  version "0.6.9"

  sha256 "ba5da7f396a6c05b8736ed80444a1bc76fb1a9c339e4f76fa038e779ec3cc83d"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip"

  name "Rustcast"
  desc "Utility tooling popup window for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :big_sur"

  app "target/release/macos/Rustcast.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
