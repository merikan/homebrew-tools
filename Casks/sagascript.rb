cask "sagascript" do
  version "1.0.2"
  sha256 "3654c5173d45fb8db79c63c4a836a77d2389dc165bb7f96231a5b189213f7546"

  url "https://github.com/Magnus-Gille/sagascript/releases/download/v#{version}/Sagascript.dmg"
  name "Sagascript App"
  desc "Privacy-first dictation, transcription with local Whisper models"
  homepage "https://github.com/Magnus-Gille/sagascript"

  depends_on macos: :sonoma

  app "Sagascript.app"

  zap trash: "~/Library/Application Support/Sagascript"
end
