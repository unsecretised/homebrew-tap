cask "sxitch" do
  version "1.3"
  sha256 "530d346681e3c3e47956a8626b544075a8a54017e451730f2d5e8b3980edb885"

  url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/v#{version}/Sxitch.app.zip",
      verified: "pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/"
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
