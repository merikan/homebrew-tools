class Kubeaudit < Formula
  desc "Audit your Kubernetes clusters against common security controls"
  homepage "https://github.com/Shopify/kubeaudit"
  url "https://github.com/Shopify/kubeaudit/releases/download/v0.5.0/kubeaudit_0.5.0_darwin_amd64.tar.gz"
  version "0.5.0"
  sha256 "7972073c62166d5d76b405c53618580a8b4380e98d0fbf1d3d8b15ee00b75b53"

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
