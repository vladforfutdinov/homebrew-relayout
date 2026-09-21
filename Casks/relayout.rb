cask "relayout" do
  version "1.3.1"
  sha256 "ca35fe1f96612ef0f8e56fd9a2fbb75e2ea765b10fcc10ce6da1e3a535d3f8f3"

  url "https://github.com/vladforfutdinov/reLayout/releases/download/v#{version}/reLayout.dmg"
  name "reLayout"
  desc "Retype wrong-layout text into the correct keyboard layout"
  homepage "https://github.com/vladforfutdinov/reLayout"

  # Notarized, so no `quarantine` workaround is needed — the cask installs clean.
  depends_on macos: :ventura

  app "ReLayout.app"

  zap trash: "~/Library/Preferences/com.vladforfutdinov.relayout.plist"
end
