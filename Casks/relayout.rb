cask "relayout" do
  version "1.2.16"
  sha256 "4876873b62d22b4a90230bf7d8a064aafaa8d578586aa64f97267d0c9173091f"

  url "https://github.com/vladforfutdinov/reLayout/releases/download/v#{version}/reLayout.dmg",
      verified: "github.com/vladforfutdinov/reLayout/"
  name "reLayout"
  desc "Retype wrong-layout text into the correct keyboard layout"
  homepage "https://github.com/vladforfutdinov/reLayout"

  # Notarized, so no `quarantine` workaround is needed — the cask installs clean.
  depends_on macos: ">= :ventura"

  app "ReLayout.app"

  zap trash: [
    "~/Library/Preferences/com.vladforfutdinov.relayout.plist",
  ]
end
