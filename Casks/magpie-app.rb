cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.0"
  sha256 arm:   "c02eeb15e2c38943c460ecfdf3943a9c7fa39c3739c8a8ccb00c1c4a2eefb10d",
         intel: "00f73ac62c962bdbc82aff418d6bd2d03f6891e05a0952e5333f748522526f21"

  url "https://github.com/robin-jiangdh/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
