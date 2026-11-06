class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  url "https://github.com/smnkgv/verifique/releases/download/v0.1.0/verifique-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "65d32b9e99ad451e2efcbabcb39538746de350d69091fb5a0bf414c2b539a0ed"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "verifique"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verifique --version")
  end
end
