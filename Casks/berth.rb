cask "berth" do
  version "1.9.8"
  sha256 "dba361b42447425e3e1dd335fb1a4c131577cceb64cb594e3add2ab87fbeb5ce"

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
