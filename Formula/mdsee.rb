class Mdsee < Formula
  desc "Markdown viewer for your terminal"
  homepage "https://github.com/kotsutsumi/mdsee"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kotsutsumi/mdsee/releases/download/v#{version}/mdsee-aarch64-apple-darwin.tar.gz"
      sha256 "1e13ac886765152b80c01e8c34899cb4b71696b0db1999ee386208ddc8640bbd"
    else
      url "https://github.com/kotsutsumi/mdsee/releases/download/v#{version}/mdsee-x86_64-apple-darwin.tar.gz"
      sha256 "d6e1305e6b9ee8c067d902013eabe6377a8ecde5667eefb83519d5e99741bb34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kotsutsumi/mdsee/releases/download/v#{version}/mdsee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "541a3b30a9fd7f2807de1fdb0329ce217d3206b365594aaa35195ad338e7acc9"
    else
      url "https://github.com/kotsutsumi/mdsee/releases/download/v#{version}/mdsee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17d37a058f321ccfb3480ce42408f4560454cc599f407d39e56924f52feb28f3"
    end
  end

  def install
    bin.install "mdsee"
  end

  test do
    assert_match "mdsee #{version}", shell_output("#{bin}/mdsee --version")
  end
end
