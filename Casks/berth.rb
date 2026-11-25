cask "berth" do
  version "1.9.19"
  sha256 "6e67cc19a7b0170f92361d31ba3c2cf6cb7304c70065696fd2ab8bb052e32351"

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
