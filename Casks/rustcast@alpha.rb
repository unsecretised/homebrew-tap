cask "rustcast-alpha" do
  version "0.6.1-alpha"
  sha256 "b26007e5bc55cb7dfc5387bcf230a444921af8134893132408b3714cf136dfc5"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip"
  name "Rustcast"
  desc "Utility tooling popup window for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :big_sur"

  app "Rustcast.app"

  # Usually omit livecheck for versioned casks, or pin it to this version.
  livecheck do
    skip "Versioned cask"
  end
end
