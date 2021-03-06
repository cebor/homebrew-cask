cask "box-sync" do
  version "4.0.8009"
  sha256 :no_check

  # boxcdn.net/ was verified as official when first introduced to the cask
  url "https://e3.boxcdn.net/box-installers/sync/Sync+4+External/Box%20Sync%20Installer.dmg"
  name "Box Sync"
  desc "Cloud based collaboration and management platform focusing on security"
  homepage "https://www.box.com/"

  app "Box Sync.app"

  uninstall quit:   "com.box.sync",
            delete: [
              "/Library/PrivilegedHelperTools/com.box.sync.iconhelper",
              "/Library/PrivilegedHelperTools/com.box.sync.bootstrapper",
            ]

  zap trash: [
    "~/Library/Application Support/Box/Box Sync",
    "~/Library/Logs/Box/Box Sync",
  ],
      rmdir: "~/Library/Application Support/Box"
end
