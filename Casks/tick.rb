cask "tick" do
  version "1.4"
  sha256 "6ce89c1156618395420104c31b769587eaeb4d795220fec970d75929127fdf5c"

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
