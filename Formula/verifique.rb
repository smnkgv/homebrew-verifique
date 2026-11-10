class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.0/verifique-macos-arm64.tar.gz"
      sha256 "6968920813dc8b7555e6118f7e8b6c7b89ab8079e044fdaca684576f38619a29"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.0/verifique-macos-x64.tar.gz"
      sha256 "f647088849ff055ede386897ec1f13badcd4db971171977e317c7ea4d55919b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.0/verifique-linux-arm64.tar.gz"
      sha256 "3dc57fb276df94e359bf037bc2d53c95249fc5a181f65c16e1c3589d266e0c6f"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.0/verifique-linux-x64.tar.gz"
      sha256 "abf9b38cd89559883ba47c353882619b88376ec89f2d266f7068348151954d68"
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
