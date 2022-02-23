class GduGo < Formula
  desc "Fast disk usage analyzer with console interface written in Go"
  homepage "https://github.com/dundee/gdu"
  url "https://github.com/dundee/gdu/releases/download/v5.13.2/gdu_darwin_amd64.tgz"
  sha256 "82f743ea3a8c94f4c8a3bf64d218e1e6f03b660748fbda7fde4f5cc5748ed57b"
  license "MIT"

  def install
    bin.install "gdu_darwin_amd64" => "gdu-go"
  end

  def caveats; <<~EOS
    👉 Note!!
    This is not the official Formula from the creator of `gdu`. It is only for my personal
    use since it is a name clash with gdu in coreutils, see https://github.com/dundee/gdu/issues/48.
    Instead it will be installed as `gdu-go` and I will use an alias; `alias gdu='gdu-go'`

    Kudos to Daniel Milde for creating this tool. 👍
  EOS
  end

  test do
    assert_match "v5.13.2", shell_output("#{bin}/gdu-go -v")
  end
end
