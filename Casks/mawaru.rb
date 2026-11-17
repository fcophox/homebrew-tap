cask "mawaru" do
  version "0.1.0"
  sha256 "e431d2cc5bd439fc5010c693f9634afb596bf0fbf5d0c7254f66f6b6e0019f97"

  url "https://github.com/fcophox/mawaru-app/releases/download/v#{version}/Mawaru-#{version}-universal.dmg"
  name "Mawaru"
  desc "Animated 3D device mockups with video export"
  homepage "https://mawaru.fcophox.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Mawaru.app"

  # Mawaru is not notarized by Apple: without this, Gatekeeper blocks the first launch.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Mawaru.app"]
  end

  zap trash: [
    "~/Library/Application Support/Mawaru",
    "~/Library/Preferences/app.mawaru.desktop.plist",
    "~/Library/Saved Application State/app.mawaru.desktop.savedState",
  ]
end
