cask "tick" do
  version "1.3"
  sha256 "99748f4bf24a9e295b61273d26bf4d7b3ea782596482a5e57f6492b30d5fc618"

  url "https://github.com/white-currant/Tick/releases/download/v#{version}/Tick.dmg"
  name "Tick"
  desc "Aviation-style checklists and reference cards for macOS"
  homepage "https://github.com/white-currant/Tick"

  auto_updates true
  depends_on macos: :sonoma

  app "Tick.app"

  zap trash: [
    "~/Library/Application Support/Tick",
    "~/Library/Caches/com.yulion.tick",
    "~/Library/Containers/com.yulion.tick",
    "~/Library/HTTPStorages/com.yulion.tick",
    "~/Library/Preferences/com.yulion.tick.plist",
    "~/Library/Saved Application State/com.yulion.tick.savedState",
  ]
end
