cask "berth" do
  version "1.7.0"
  sha256 "5960089bbf01252a1e3284512ee1b0bd6b713b2c21acad81109e49f3c29072a1"

  url "https://github.com/xinghelee/Berth/releases/download/v#{version}/Berth-#{version}.dmg"
  name "Berth"
  desc "Native SSH client with jump hosts, port forwarding and iCloud sync"
  homepage "https://github.com/xinghelee/Berth"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Berth.app"

  uninstall quit: "com.berthssh.app"

  zap trash: [
    "~/Library/Application Support/Berth",
    "~/Library/Preferences/com.berthssh.app.plist",
    "~/Library/Saved Application State/com.berthssh.app.savedState",
  ]
end
