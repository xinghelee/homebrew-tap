cask "berth" do
  version "1.9.5"
  sha256 "257e36fe064927d5382f2aac85e39e6ce38b314e8b129e802a316529dc81c849"

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
