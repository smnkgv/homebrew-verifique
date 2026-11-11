class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.3/verifique-macos-arm64.tar.gz"
      sha256 "5eb7c3a04e1af590e53dc251a37241ef4b16388073519e9a4dfc482957211c07"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.3/verifique-macos-x64.tar.gz"
      sha256 "9b3e8f4ca2a36c029d8f9e9cbd16fc4877ed8b2bf260024d584549174e3dd3d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.3/verifique-linux-arm64.tar.gz"
      sha256 "fb2d24b8350c0b727e53faf71646302489f7ff36e8d5f6763ce146e38c0222bb"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.3/verifique-linux-x64.tar.gz"
      sha256 "6be3ebaac1065fe34c39ec613d9687edfffa31e7bf634dace245ee749fdc5fba"
    end
  end

  def install
    bin.install "verifique"
  end

  def caveats
    <<~EOS
      Database support is an add-on. Install the ones your projects use, such as:
        verifique plugin add postgres mongo redis
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verifique --version")
  end
end
