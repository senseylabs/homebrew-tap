class VaultCli < Formula
  desc "Village Vault CLI — secrets management for Sensey"
  homepage "https://github.com/senseylabs/village"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/senseylabs/village/releases/download/v0.1.0/vault-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "cb874b4a3542c97f0b81f2c17d09c1b674f59db8478dd86c4127c94ba26760ab"
    end
    on_intel do
      url "https://github.com/senseylabs/village/releases/download/v0.1.0/vault-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "726f9530a69529ff4a0cbd6aae522a45e084ec222c5529671192d69bb3dbba6d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/senseylabs/village/releases/download/v0.1.0/vault-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "86d4d97b00858426a76a1eeadd4b4cff1c6a9dd39d3b757ac3a0724824172b73"
    end
  end

  def install
    bin.install "vault"
  end

  test do
    system "#{bin}/vault", "--version"
  end
end
