cask "relayout" do
  version "1.3.10"
  sha256 "16346643a8bf0899ff8cc48f4ed0171575f1db6919538b98ed02917e8f263ca9"

  url "https://github.com/vladforfutdinov/reLayout/releases/download/v#{version}/reLayout.dmg"
  name "reLayout"
  desc "Retype wrong-layout text into the correct keyboard layout"
  homepage "https://github.com/vladforfutdinov/reLayout"

  # Notarized, so no `quarantine` workaround is needed — the cask installs clean.
  depends_on macos: :ventura

  app "ReLayout.app"

  zap trash: "~/Library/Preferences/com.vladforfutdinov.relayout.plist"
end
