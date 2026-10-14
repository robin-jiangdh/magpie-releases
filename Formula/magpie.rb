class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robin-jiangdh/magpie-releases/releases/download/v2.4.0/magpie-cli-darwin-arm64"
      sha256 "f3cc3aa5080602d9c1a508a562d40401f4f25a13783e72280ccfbf7d715ac47c"
    end
    on_intel do
      url "https://github.com/robin-jiangdh/magpie-releases/releases/download/v2.4.0/magpie-cli-darwin-amd64"
      sha256 "34c995e9eb670eb903a3a4d4261eadc88d05b914ef7f30ededd59fe3ba0d07ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/robin-jiangdh/magpie-releases/releases/download/v2.4.0/magpie-cli-linux-arm64"
      sha256 "ff7220cfa6c6741c75eec351a45f4a1791696468cb634f601cd5f04aaa7f1158"
    end
    on_intel do
      url "https://github.com/robin-jiangdh/magpie-releases/releases/download/v2.4.0/magpie-cli-linux-amd64"
      sha256 "9b23615ad392feb4ca156d564af28b4e5f69133db8e47b993b6dee7822149f6c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
