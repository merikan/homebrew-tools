# frozen_string_literal: true

# this is the top-level documentation comment for
cask 'sagascript' do
  version '1.3.2'
  sha256 '4b02e5f984f8af177a4858bbc026fe338c1506e5fac949907db84873566ed234'

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
