cask "raymate" do
  version "0.1.5"
  sha256 "034d32c19681cf2c2db48ea0fed6776054a5f0332de7b7919173465cf5d0f1b9"

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
