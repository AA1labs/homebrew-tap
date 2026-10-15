cask "raymate" do
  version "0.1.7"
  sha256 "838b98e7d6ab8d2e01063fc3d98388544eb4d2e06b713af55195f72b29e18fbc"

  url "https://github.com/AA1labs/Raymate-releases/releases/download/v#{version}/RayMate_#{version}_universal.dmg"
  name "RayMate"
  desc "AI launcher with chat, quick prompts and on-device dictation"
  homepage "https://raymate.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "RayMate.app"

  zap trash: [
    "~/Library/Application Support/com.raymate.app",
    "~/Library/Caches/com.raymate.app",
    "~/Library/HTTPStorages/com.raymate.app",
    "~/Library/Logs/com.raymate.app",
    "~/Library/Preferences/com.raymate.app.plist",
    "~/Library/Saved Application State/com.raymate.app.savedState",
    "~/Library/WebKit/com.raymate.app",
  ]
end
