cask "sxitch" do
  version "1.5.1"
  sha256 "68f76e88c86f90afaa07dd796b8616f50f07e22fec3ef5ccdce30a6d8f61278e"

  url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/v#{version}/Sxitch.app.zip"
  name "Sxitch"
  desc "Tree-based app switcher"
  homepage "https://sxitch.app/"

  livecheck do
    url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/v#{version}/version.txt"
    regex(/^(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sequoia

  app "Sxitch.app"

  zap trash: [
    "~/Library/Application Support/Sxitch",
    "~/Library/Caches/app.sxitch",
    "~/Library/Preferences/app.sxitch.plist",
  ]
end
