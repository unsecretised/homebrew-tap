cask "sxitch" do
  version "1.4.1"
  sha256 "081ce601857710a61eefda25ee83320755f708a04b710047230bb45c7bdef569"

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
