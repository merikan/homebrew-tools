class Gitleaks < Formula
  desc "Audit git repos for secrets"
  homepage "https://github.com/zricethezav/gitleaks"
  url "https://github.com/zricethezav/gitleaks/releases/download/v1.19.3/gitleaks-darwin-amd64"
  version "1.19.3"
  sha256 "84396cef693dc064869789a6b56087085639d46beec3025a33bd626533e7534e"

  def caveats; <<~EOS
      This is not the official Formula from the creator of `gitleaks`. It is only for my personal 
      use until Zachary provides a official Formula.
      In the meantime jump over to github and star the repository.
        https://github.com/zricethezav/gitleaks

      Kudos to Zachary for creating gitleaks. https://github.com/zricethezav
  EOS
  end
        
  def install
    bin.install "gitleaks-darwin-amd64" => "gitleaks"
  end

  test do
    system "#{bin}/gitleaks -v"
  end
end
