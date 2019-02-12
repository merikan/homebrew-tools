class Gitleaks < Formula
  desc "Audit git repos for secrets"
  homepage "https://github.com/zricethezav/gitleaks"
  url "https://github.com/zricethezav/gitleaks/releases/download/v1.24.0/gitleaks-darwin-amd64"
  version "1.24.0"
  sha256 "f81d98a002b85a12abb6d6441736c95a7ef416c97d9fbd55113ff380913146f3"

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
