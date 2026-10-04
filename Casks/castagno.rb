cask "castagno" do
  version "0.1.0"
  sha256 "8ba6487bdc55489e43c87effdb94aabccf381a9087378e55f082d4d573e4ee3e"

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

  caveats <<~EOS
    Castagno is ad hoc signed, not notarized.
    Installation removes quarantine from Castagno.app only.
    Allow Local Network access when prompted.
  EOS
end
