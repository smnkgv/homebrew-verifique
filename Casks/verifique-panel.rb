cask "verifique-panel" do
  version "0.3.3"

  on_arm do
    sha256 "a1199794f9ef2f464bdfd6ae1f030c2263ed7d2985a2e26e2523b9a933934462"
    url "https://github.com/smnkgv/verifique/releases/download/v#{version}/verifique-panel-macos-arm64.dmg"
  end
  on_intel do
    sha256 "9c16f34fbaddc33dc6009d916d800204d4ff77555d6ecb049025d0acf21bee05"
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
