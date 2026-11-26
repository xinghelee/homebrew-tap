cask "termite" do
  version "2.4.0"
  sha256 "64bc0a6958e7bf7e0555de57a7daead42fce7a3ab595b4a52e8d352918423fe6"

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
