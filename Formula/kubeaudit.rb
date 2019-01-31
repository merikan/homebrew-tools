class Kubeaudit < Formula
  desc "Audit your Kubernetes clusters against common security controls"
  homepage "https://github.com/Shopify/kubeaudit"
  url "https://github.com/Shopify/kubeaudit/releases/download/v0.4.0/kubeaudit_0.4.0_darwin_amd64.tar.gz"
  version "0.4.0"
  sha256 "4d85d29deba5a8c6cbc5feb4f64fc9379c6fee2e0e989d585b384bbb88764a07"

  def install
    bin.install "kubeaudit"
  end

  def caveats; <<~EOS
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
