cask "raymate" do
  version "0.1.2"
  sha256 "d18a711b8754fd3f67cc672eaaac5e121161ded1f652c7bd55e55d048b0d50ec"

  url "https://github.com/AA1labs/Raymate-releases/releases/download/v#{version}/RayMate_#{version}_aarch64.dmg"
  name "RayMate"
  desc "AI launcher with chat, quick prompts and on-device dictation"
  homepage "https://raymate.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey
  depends_on arch: :arm64

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
