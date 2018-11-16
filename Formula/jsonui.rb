class Jsonui < Formula
  desc "jsonui is an interactive JSON explorer on your command line"
  homepage "https://github.com/gulyasm/jsonui"
  url "https://github.com/gulyasm/jsonui/releases/download/v1.0.1/jsonui_darwin_amd64"
  version "1.0.1"
  sha256 "239aeb84eee40e55db6692e688e39d13f1215aae450285423ca0182ec044ce28"

  def caveats; <<~EOS
      This is not the official Formula from the creator of `jsonui`. It is only for my personal 
      use until Máté provides a official Formula.
      In the meantime jump over to github and star the repository.
        https://github.com/gulyasm/jsonui
      Kudos to Máté for creating jsonui. https://github.com/gulyasm
  EOS
  end
        
  def install
    bin.install "jsonui_darwin_amd64" => "jsonui"
  end

  test do
    system "#{bin}/jsonui -v"
  end
end
