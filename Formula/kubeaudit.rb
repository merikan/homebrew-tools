class Kubeaudit < Formula
  desc "Audit your Kubernetes clusters against common security controls"
  homepage "https://github.com/Shopify/kubeaudit"
  url "https://github.com/Shopify/kubeaudit/releases/download/v0.4.1/kubeaudit_0.4.1_darwin_amd64.tar.gz"
  version "0.4.1"
  sha256 "97a0330dafe81e4c2f9e18dbf329ea51e593aeb9b31f0613f0b922fc9c79c710"

  def install
    bin.install "kubeaudit"
    bin.install_symlink "kubeaudit" => "kubectl-audit"
  end

  def caveats; <<~EOS
    kubeaudit is also installed as a kubectl plugin.
    $ kubectl audit

    This is not the official Formula from the creator of `kubeaudit`. It is only for my personal
    use until Shopify provides a official Formula.
    In the meantime jump over to github and star the repository.
    https://github.com/Shopify/kubeaudit

    Kudos to Shopify for creating kubeaudit. https://github.com/Shopify
  EOS
  end

  test do
    system "#{bin}/kubeaudit", "-h"
  end
end
