cask "termite" do
  version "1.19"
  sha256 "51ebace516372fbc222d9c671ff8765c204391327ebf901e4ebf17a117d59573"

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
