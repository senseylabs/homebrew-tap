class KagiCli < Formula
  desc "Kagi CLI — secrets management for Sensey"
  homepage "https://github.com/senseylabs/village"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/388990934",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "3d85efca70a77e126633f75b774b48b10eee4b4d72571fde7e588dfc03c893f2"
    end
    on_intel do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/388990935",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "20dc4c4635ba3c23a6152ea89d32399e516e3a28453714c367ce4b2f5396fb12"
    end
  end

  on_linux do
    on_intel do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/388990942",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "28ace67b6923a9442baedbc9c7d7931ab1c1f03d55764dd5948e3fa1fafd8d7c"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    system "#{bin}/kagi", "--version"
  end
end
