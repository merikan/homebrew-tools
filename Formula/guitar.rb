# frozen_string_literal: true

# this is the top-level documentation comment for
class Guitar < Formula
  desc 'A terminal based git client with fast topological & chronological graph rendering'
  homepage 'https://github.com/asinglebit/guitar'
  version '1.0.4'
  license 'GPL-3.0'

  url "https://github.com/asinglebit/guitar/releases/download/v#{version}/guitar-macos"
  sha256 '2b7c9bd8d72d06a93649144c77624d9a54b853fe978f42082265ede21f5310e3'

  depends_on macos: :sonoma

  def install
    bin.install 'guitar-macos' => 'guitar'
    bin.install_symlink 'guitar' => 'gitr'
  end

  def caveats
    <<~NOTE
      👉 Note!!
      This is not the official Formula from the creator of `guitar`.

      Tool is installed as 'guitar' and alias 'gitr'

      Kudos to Gasimov Abdulali for creating this tool. 👍
    NOTE
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/guitar -v")
  end
end
