class Gitleaks < Formula
  desc "Audit git repos for secrets"
  homepage "https://github.com/zricethezav/gitleaks"
  url "https://github.com/zricethezav/gitleaks/releases/download/v1.21.0/gitleaks-darwin-amd64"
  version "1.21.0"
  sha256 "0a7e9160f8dcb19da61c5068a85b18deb68390b0d7215ff078a57fad29f6a3e9"

  def install
    bin.install "gitleaks-darwin-amd64" => "gitleaks"
  end

  def caveats; <<~EOS
    This is not the official Formula from the creator of `gitleaks`. It is only for my personal
    use until Zachary provides a official Formula.
    In the meantime jump over to github and star the repository.
      https://github.com/zricethezav/gitleaks

    Kudos to Zachary for creating gitleaks. https://github.com/zricethezav
  EOS
  end

  test do
    system "#{bin}/gitleaks", "-v"
  end
end
