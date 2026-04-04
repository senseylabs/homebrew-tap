class KagiCli < Formula
  desc "Kagi CLI — secrets management for Sensey"
  homepage "https://github.com/senseylabs/village"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/senseylabs/village/releases/download/v0.1.0/kagi-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "de091167e765607e8599fad0f778b1e72ab6ecd45470c4f8afab4da20cbff843"
    end
    on_intel do
      url "https://github.com/senseylabs/village/releases/download/v0.1.0/kagi-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "573b3f391975ce8f5f3a7b4805d6e9f99af0961e17ebb2adf631e6c9f7bbdb85"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/senseylabs/village/releases/download/v0.1.0/kagi-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "765d5675af1926a598039c22d2532fd91ec91fd537b0643a451a4c9bc7082f5f"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    system "#{bin}/kagi", "--version"
  end
end
