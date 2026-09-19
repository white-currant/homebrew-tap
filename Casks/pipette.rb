cask "pipette" do
  version "1.0"
  sha256 "a56f5ec29b029f0cdb7681d77bd98bee9fa38054bb4c8cb2f01eb5da3a312019"

  url "https://github.com/white-currant/Pipette/releases/download/v#{version}/Pipette.dmg"
  name "Pipette"
  desc "Floating color picker with Photoshop integration"
  homepage "https://github.com/white-currant/Pipette"

  auto_updates true
  depends_on macos: :sonoma

  app "Pipette.app"

  zap trash: [
    "~/Library/Caches/com.yulion.pipette",
    "~/Library/HTTPStorages/com.yulion.pipette",
    "~/Library/Preferences/com.yulion.pipette.plist",
    "~/Library/Saved Application State/com.yulion.pipette.savedState",
  ]
end
