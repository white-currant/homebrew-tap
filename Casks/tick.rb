cask "tick" do
  version "1.0"
  sha256 "ff1e59ac71fdcb20a593fcc611a28b5dccf53d764977f6373b9c26d6655a91c4"

  url "https://github.com/white-currant/Tick/releases/download/v#{version}/Tick-#{version}.dmg"
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
