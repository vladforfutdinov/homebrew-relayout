cask "relayout" do
  version "1.3.15"
  sha256 "4fce3c6ae409bac97924dfacb9e7d5c74929e69aea45b1fd2dbc86a06620d67c"

  url "https://github.com/vladforfutdinov/reLayout/releases/download/v#{version}/reLayout.dmg"
  name "reLayout"
  desc "Retype wrong-layout text into the correct keyboard layout"
  homepage "https://github.com/vladforfutdinov/reLayout"

  # Notarized, so no `quarantine` workaround is needed — the cask installs clean.
  depends_on macos: :ventura

  app "ReLayout.app"

  zap trash: "~/Library/Preferences/com.vladforfutdinov.relayout.plist"
end
