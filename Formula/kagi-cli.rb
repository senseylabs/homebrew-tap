class KagiCli < Formula
  desc "Kagi CLI — secrets management for Sensey"
  homepage "https://github.com/senseylabs/village"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/391035682",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "6e4e972833ee0c49a4e1165c2ded3a81c4a7ee9027e6cc815cb7b79568800fb5"
    end
    on_intel do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/391035680",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "34ed7b9813cf5750eaac39924158e56708976c561ef8b0b798ac0782606c076f"
    end
  end

  on_linux do
    on_intel do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/391035685",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "4446775a19b05a60b42cd09cd0f27c96a75431d834ad2ef8f82a09cc9c113fa5"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    system "#{bin}/kagi", "--version"
  end
end
