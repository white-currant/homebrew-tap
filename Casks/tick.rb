cask "tick" do
  version "1.1"
  sha256 "6f57142bad1d393982601c5a3346c3375b66c091ea343d1d4582f932566e552e"

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
