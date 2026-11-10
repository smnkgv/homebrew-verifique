cask "verifique-panel" do
  version "0.3.1"

  on_arm do
    sha256 "93536c2fd68fea9e7f60c8d4811b729aca19e2c95ec63cc7aac89db959393b8c"
    url "https://github.com/smnkgv/verifique/releases/download/v#{version}/verifique-panel-macos-arm64.dmg"
  end
  on_intel do
    sha256 "bf8a2e9bf18078233a3b60081b98daf33342bc899cc9842254e211af0cd7f196"
    url "https://github.com/smnkgv/verifique/releases/download/v#{version}/verifique-panel-macos-x64.dmg"
  end

  name "verifique"
  desc "Status-bar panel for the verifique verification queue"
  homepage "https://verifique.ai"

  depends_on formula: "smnkgv/verifique/verifique"

  app "verifique.app"

  caveats <<~EOS
    The panel acts through the verifique command, which this cask installs as well.
    To open the panel at every login, use `verifique panel install` instead, which also
    sets that up.
  EOS
end
