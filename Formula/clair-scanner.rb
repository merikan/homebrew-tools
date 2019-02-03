class ClairScanner < Formula
  desc "Docker containers vulnerability scan"
  homepage "https://github.com/arminc/clair-scanner"
  url "https://github.com/arminc/clair-scanner/releases/download/v8/clair-scanner_darwin_amd64"
  version "8"
  sha256 "dfd11e87097c952f8340a86fa90d156fb33e9b7e4cd68bb433461ebe9e791528"

  def install
    bin.install "clair-scanner_darwin_amd64" => "clair-scanner"
  end

  def caveats; <<~EOS
    👉 Note!!
    This is not the official Formula from the creator of `clair-scanner`. It is only for my personal
    use until Armin Coralic provides a official Formula.
    In the meantime, jump over to github and star the repository.
    https://github.com/arminc/clair-scanner

    Kudos to Armin Coralic for creating this tool. 👍
  EOS
  end

  test do
    system "#{bin}/clair-scanner", "-h"
  end
end
