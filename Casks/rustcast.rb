cask "rustcast" do

  version "0.6.8"

  sha256 "c3778c80be8a0e94d5a2efad1c66b9fddd9ea61b5b8a2c8a3f108c2957d46471"

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
