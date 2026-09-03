cask "sagascript" do
  version "1.1.3"
  sha256 "608280fa79810f2e844455b45343a3e4026d96afb1bcfcf85179eaa7f6c9cdf4"


  url "https://github.com/Magnus-Gille/sagascript/releases/download/v#{version}/Sagascript.dmg"
  name "Sagascript App"
  desc "Privacy-first dictation, transcription with local Whisper models"
  homepage "https://github.com/Magnus-Gille/sagascript"

  depends_on macos: :sonoma

  app "Sagascript.app"

  zap trash: "~/Library/Application Support/Sagascript"
end
