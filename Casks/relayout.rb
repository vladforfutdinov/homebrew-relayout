cask "relayout" do
  version "1.2.25"
  sha256 "b3de9beffcf8b0deb9ac89e63dca4c35cebb297f834ec311e5dc800d90077e51"

  url "https://github.com/vladforfutdinov/reLayout/releases/download/v#{version}/reLayout.dmg"
  name "reLayout"
  desc "Retype wrong-layout text into the correct keyboard layout"
  homepage "https://github.com/vladforfutdinov/reLayout"

  # Notarized, so no `quarantine` workaround is needed — the cask installs clean.
  depends_on macos: :ventura

  app "ReLayout.app"

  zap trash: "~/Library/Preferences/com.vladforfutdinov.relayout.plist"
end
