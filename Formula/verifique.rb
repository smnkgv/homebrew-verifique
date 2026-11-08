class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  url "https://github.com/smnkgv/verifique/releases/download/v0.2.1/verifique-macos-arm64.tar.gz"
  version "0.2.1"
  sha256 "be7072cafe247824f90e4bf1107c86386b4cc3509915c459ad16ed5294d8b81e"
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
