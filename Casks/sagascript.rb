cask "sagascript" do
  version "1.0.1"
  sha256 "bf4bb01740e84b8ad6fbd4237d2a09dbf40ce9931d9b0025c6befdf50e5ea684"

  url "https://github.com/Magnus-Gille/sagascript/releases/download/v#{version}/Sagascript.dmg"
  name "Sagascript App"
  desc "Privacy-first dictation, transcription with local Whisper models"
  homepage "https://github.com/Magnus-Gille/sagascript"

  depends_on macos: :sonoma

  app "Sagascript.app"

  zap trash: "~/Library/Application Support/Sagascript"
end
