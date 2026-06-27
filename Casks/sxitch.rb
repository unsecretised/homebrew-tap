cask "sxitch" do
  version :latest
  sha256 :no_check

  url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/Sxitch.app.zip"
  name "Sxitch"
  desc "Tree based app switcher"
  homepage "https://sxitch.app/"

  # The livecheck block can be completely removed since version is :latest, 
  # but if you must keep it, Homebrew will ignore it anyway.

  auto_updates false
  depends_on macos: :monterey

  app "Sxitch.app"

  zap trash: "~/Library/Application Support/Sxitch"
end
