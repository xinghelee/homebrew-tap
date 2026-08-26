cask "termite" do
  version "2.1.0"
  sha256 "c77a80435020dab259fabe888f6394e355898013367e92d5819a391a42116303"

  url "https://github.com/xinghelee/Termite/releases/download/v#{version}/Termite-#{version}.dmg"
  name "Termite"
  desc "Native terminal with session persistence and deep shell integration"
  homepage "https://github.com/xinghelee/Termite"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Termite.app"

  uninstall quit: "com.termite.app"

  zap trash: [
    "~/Library/Application Support/Termite",
    "~/Library/Preferences/com.termite.app.plist",
    "~/Library/Saved Application State/com.termite.app.savedState",
  ]
end
