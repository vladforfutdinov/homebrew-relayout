cask "relayout" do
  version "1.2.3"
  sha256 "a8dd51ab575af0c3d61b88d121d752f887086ef0904e3889e32df27d09139693"

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
