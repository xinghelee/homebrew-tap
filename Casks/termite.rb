cask "termite" do
  version "1.14"
  sha256 "78c015d316d48409133a8f67c71d356fc358e47a76d88fae451933db738a5a05"

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
