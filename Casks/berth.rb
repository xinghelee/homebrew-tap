cask "berth" do
  version "1.9.1"
  sha256 "833725603120255d8244bffa04ccb71b62014a5419b69f40e5dc01019b5a799f"

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
