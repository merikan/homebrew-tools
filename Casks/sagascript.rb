cask "sagascript" do
  version "1.0.5"
  sha256 "9c9c35d5a1160b78d7c205bc8afce4d83eb301b114fda9be2505f52149800f5e"

  url "https://github.com/Magnus-Gille/sagascript/releases/download/v#{version}/Sagascript.dmg"
  name "Sagascript App"
  desc "Privacy-first dictation, transcription with local Whisper models"
  homepage "https://github.com/Magnus-Gille/sagascript"

  depends_on macos: :sonoma

  app "Sagascript.app"

  zap trash: "~/Library/Application Support/Sagascript"
end
