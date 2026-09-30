# frozen_string_literal: true

# this is the top-level documentation comment for
cask 'sagascript' do
  version '1.2.0'
  sha256 '30c4169e63432e257a3df7ee69bafea3c93e203bbd01be228aa683a90252fcd4'

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
