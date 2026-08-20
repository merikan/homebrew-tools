cask "sagascript" do
  version "1.0.9"
  sha256 "4133f351f793477174654ac40bd37932035e1c8e5cae9e2cc168e47dc21d51ec"

  url "https://github.com/Magnus-Gille/sagascript/releases/download/v#{version}/Sagascript.dmg"
  name "Sagascript App"
  desc "Privacy-first dictation, transcription with local Whisper models"
  homepage "https://github.com/Magnus-Gille/sagascript"

  depends_on macos: :sonoma

  app "Sagascript.app"

  zap trash: "~/Library/Application Support/Sagascript"
end
