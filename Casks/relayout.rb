cask "relayout" do
  version "1.2.7"
  sha256 "1ab66769e4b9de870fb8272fc78385c3e7da0c2498befa745d533bcbf25596df"

  url "https://github.com/vladforfutdinov/reLayout/releases/download/v#{version}/reLayout.dmg",
      verified: "github.com/vladforfutdinov/reLayout/"
  name "reLayout"
  desc "Retype wrong-layout text into the correct keyboard layout"
  homepage "https://github.com/vladforfutdinov/reLayout"

  # Notarized, so no `quarantine` workaround is needed — the cask installs clean.
  depends_on macos: ">= :ventura"

  app "ReLayout.app"

  zap trash: [
    "~/Library/Preferences/com.vlad.relayout.plist",
  ]
end
