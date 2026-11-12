cask "verifique-panel" do
  version "0.3.5"

  on_arm do
    sha256 "2952438c5b70069efcd618e1ce678547cc8239d10ffb52010a66a5133f610375"
    url "https://github.com/smnkgv/verifique/releases/download/v#{version}/verifique-panel-macos-arm64.dmg"
  end
  on_intel do
    sha256 "7b35a2f4a9f7e728b0038c732370ea1d38fb3e73ea3bea4e6f99eb3d6f849ab9"
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
