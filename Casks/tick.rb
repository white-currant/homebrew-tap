cask "tick" do
  version "1.2"
  sha256 "cd4707e3f2e92a448319810b29307f3fc19164b4d4ebffe5e2724a5601ccf8c4"

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
