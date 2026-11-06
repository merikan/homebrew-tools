# frozen_string_literal: true

# https://github.com/Magnus-Gille/sagascript/releases
cask 'sagascript' do
  version '1.4.8'
  sha256 '9d37b0fda37f73bcc01d35bdeef26c78d0d37f46f01365bf388a2afebf6d4a44'

  url "https://github.com/Magnus-Gille/sagascript/releases/download/v#{version}/Sagascript.dmg"
  name 'Sagascript App'
  desc 'Privacy-first dictation, transcription with local Whisper models'
  homepage 'https://github.com/Magnus-Gille/sagascript'

  depends_on macos: :sonoma

  app 'Sagascript.app'

  zap trash: '~/Library/Application Support/Sagascript'

  def caveats
    <<~NOTE
      👉 Note!!
      This is not the official Cask from the creator of `Sagascript`.

      Kudos to Magnus Gille for creating this tool. 👍
    NOTE
  end
end
