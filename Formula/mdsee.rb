class Mdsee < Formula
  desc "Markdown viewer for your terminal"
  homepage "https://github.com/kotsutsumi/mdsee"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kotsutsumi/mdsee/releases/download/v#{version}/mdsee-aarch64-apple-darwin.tar.gz"
      sha256 "3e945e3051bf38fac7758850900ff631e85e7bd1e4b079bbdfa12a7e57f65d3a"
    else
      url "https://github.com/kotsutsumi/mdsee/releases/download/v#{version}/mdsee-x86_64-apple-darwin.tar.gz"
      sha256 "0120049da1eaba28503b4fe22c068f637797df9e2c29b8e00a9ae0898dbaaa61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kotsutsumi/mdsee/releases/download/v#{version}/mdsee-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe8986e544538cbf4551df0d8c7a79b7a53fc07d2db060c69f0da6073b40268a"
    else
      url "https://github.com/kotsutsumi/mdsee/releases/download/v#{version}/mdsee-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec071be813d25fc6dcaecbb68c1955641d4fc8c09248e62619a9e4d8b5a515a4"
    end
  end

  def install
    bin.install "mdsee"
  end

  test do
    assert_match "mdsee #{version}", shell_output("#{bin}/mdsee --version")
  end
end
