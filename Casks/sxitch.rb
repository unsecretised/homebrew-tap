cask "sxitch" do
  version "1.4"
  sha256 "0becd93f935cdc6c207d9e77624a9eaee8cffebbeb1e0f065cc0a5dcbce40005"

  url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/v#{version}/Sxitch.app.zip",
      verified: "pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/"
  name "Sxitch"
  desc "Tree-based macOS app switcher"
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
