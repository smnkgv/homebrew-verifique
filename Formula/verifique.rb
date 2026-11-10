class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.1/verifique-macos-arm64.tar.gz"
      sha256 "b2f3912a389415d99596a0ce103a8eef30bc032fa225eef711c104089c3ce998"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.1/verifique-macos-x64.tar.gz"
      sha256 "d4c267d2f213cbf31b3d5ad3161bbc99000ff64eb8d47fd9cf294a39265122eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.1/verifique-linux-arm64.tar.gz"
      sha256 "54b9772eb622215555e1ce249f7b7341d468989a8a73129177d2617bd808dba8"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.1/verifique-linux-x64.tar.gz"
      sha256 "3903d6ea1a3f1e510c156f8928123eb5a3a863d55bcdf6f9ccb65fe0c80443d7"
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
