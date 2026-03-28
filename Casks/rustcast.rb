cask "rustcast" do

  version "0.7.3"

  sha256 "c5397827a6ed507a3d9c274f29116810691ea35cb7b73f9f28ba646ce09055f1"

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
