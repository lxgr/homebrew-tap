cask "castagno" do
  version "0.1.1"
  sha256 "dbe2259fd2ac85c09e23165ef8b272cd272723063f05cdeb984beace080b3d93"

  url "https://github.com/lxgr/castagno/releases/download/v#{version}/Castagno-#{version}-macos-arm64.zip"
  name "Castagno"
  desc "Menu bar volume and playback controls for Google Cast devices"
  homepage "https://github.com/lxgr/castagno"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Castagno.app"
  installer script: {
    executable: "/bin/sh",
    args:       ["#{staged_path}/allow-castagno.sh", "#{staged_path}/Castagno.app"],
    sudo:       false,
  }

  uninstall quit: "dev.castagno.app"
end
