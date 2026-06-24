cask "sagascript" do
  version "1.0.0"
  sha256 "8dee5913a179a9f1e4d59deed3045145e62fe9866bab9152d7880c59c3e9b1d8"

  url "https://github.com/Magnus-Gille/sagascript/releases/download/v#{version}/Sagascript.dmg"
  name "Sagascript App"
  desc "Privacy-first dictation, transcription with local Whisper models"
  homepage "https://github.com/Magnus-Gille/sagascript"

  depends_on macos: :sonoma

  app "Sagascript.app"

  zap trash: "~/Library/Application Support/Sagascript"
end
