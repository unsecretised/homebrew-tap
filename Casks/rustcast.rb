cask "rustcast" do
  arch arm: "aarch64-apple-darwin",
       intel: "x86_64-apple-darwin"

  version "0.1.6.1"

  sha256 arm:   "566d961f385b8b4fdba935d7cc5929b19cd7e2e7bb0a75b7485249b65a8d1e0f",
         intel: "fcab1977d9628c17a6f4ad0119faadc3b879b8bcffe59bd7a351b9a0445baab5"

  url "https://github.com/unsecretised/rustcast/releases/download/v#{version}/rustcast-#{arch}.app.zip",
      verified: "github.com/unsecretised/rustcast/"

  name "Rustcast"
  desc "Google search for your system"
  homepage "https://github.com/unsecretised/rustcast"

  depends_on macos: ">= :ventura"

  app "Rustcast.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "/Applications/Rustcast.app/"],
                   sudo: false
  end
end
