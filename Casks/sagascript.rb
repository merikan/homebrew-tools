# frozen_string_literal: true

# https://github.com/Magnus-Gille/sagascript/releases
cask 'sagascript' do
  version '1.4.7'
  sha256 'f170cd5a423c17fe4b24c2e6d3499a66b8aaa1caee13ecac62dd7edffb0735c4'

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
