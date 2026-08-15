cask "relayout" do
  version "1.2.20"
  sha256 "643771b46f8229157f639efc2f94a826073571c0dbe117c4880109517905393c"

  url "https://github.com/vladforfutdinov/reLayout/releases/download/v#{version}/reLayout.dmg"
  name "reLayout"
  desc "Retype wrong-layout text into the correct keyboard layout"
  homepage "https://github.com/vladforfutdinov/reLayout"

  # Notarized, so no `quarantine` workaround is needed — the cask installs clean.
  depends_on macos: :ventura

  app "ReLayout.app"

  zap trash: "~/Library/Preferences/com.vladforfutdinov.relayout.plist"
end
