class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  version "0.3.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.6/verifique-macos-arm64.tar.gz"
      sha256 "68db62fc3de696e828286b110a2c775070c4f8d0d07c658fc156cae2ab026717"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.6/verifique-macos-x64.tar.gz"
      sha256 "a55e75bf96b3124c8013deb34035c7d456b9fd5fe8b1ca52dc9d0eb635b0ecfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.6/verifique-linux-arm64.tar.gz"
      sha256 "991dc15b3647879b71e3626b05c7517208d0971f0543d2772a7c50453eced928"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.6/verifique-linux-x64.tar.gz"
      sha256 "75b70538ab5c4c985fbf147a3826e12c60538b7594ac84b69f0e1e2cd45fc45f"
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
