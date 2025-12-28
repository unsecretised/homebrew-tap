cask "rustcast" do
  arch arm: "aarch64-apple-darwin",
       intel: "x86_64-apple-darwin"

  version "0.2.0"

  sha256 arm:   "3b58e69d5353ea34d84fb0c430828127ca3838124a87ff589cf125d372cb7839",
         intel: "2cea1996c32735ecda14c3753b83ea7e1e6d8815473102e8c4cbfb05a5599fb4"

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
