class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  url "https://github.com/smnkgv/verifique/releases/download/v0.2.3/verifique-macos-arm64.tar.gz"
  version "0.2.3"
  sha256 "954a04f5b9370c06f3037ef3ebd53669be5015fdbb71b7c72a08edcd6383179b"
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
