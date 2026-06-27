cask "sxitch" do
  version :latest
  sha256 "a1739ec9a9b14dac687913acee3f80ac1a58f160de235ce126b1c8cd20d7b955"

  url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/Sxitch.app.zip"
  name "Sxitch"
  desc "Tree-based app switcher"
  homepage "https://sxitch.app/"

  depends_on macos: :sequoia

  app "Sxitch.app"

  zap trash: [
    "~/Library/Application Support/Sxitch",
    "~/Library/Preferences/app.sxitch.plist",
    "~/Library/Caches/app.sxitch",
  ]
end
