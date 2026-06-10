cask "relayout" do
  version "1.2.15"
  sha256 "44041e01df3684db8f1f9a7dc3b7e34b98ac8aafecdc4c640b89e3a482d4f7bc"

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
