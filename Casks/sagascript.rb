# frozen_string_literal: true

# this is the top-level documentation comment for
cask 'sagascript' do
  version '1.4.3'
  sha256 'f6acbd3ad4c641e0076d187477d08ab93a3f61455b5ee61b9f65440cee8f43a0'

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
