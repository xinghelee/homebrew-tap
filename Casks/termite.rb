cask "termite" do
  version "1.23"
  sha256 "86395d44e58be1f18f209c6747401d2583120c7b5d24a5995d081b8931b6f9ab"

  url "https://github.com/xinghelee/Termite/releases/download/v#{version}/Termite-#{version}.dmg"
  name "Termite"
  desc "Native terminal with session persistence and deep shell integration"
  homepage "https://github.com/xinghelee/Termite"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Termite.app"

  uninstall quit: "com.termite.app"

  zap trash: [
    "~/Library/Application Support/Termite",
    "~/Library/Preferences/com.termite.app.plist",
    "~/Library/Saved Application State/com.termite.app.savedState",
  ]
end
