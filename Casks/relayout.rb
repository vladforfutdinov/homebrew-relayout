cask "relayout" do
  version "1.2.10"
  sha256 "842d03f0c42153c942063ea728b16d35217a984b80fe612d1f3767323f262d65"

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
