class KagiCli < Formula
  desc "Kagi CLI — secrets management for Sensey"
  homepage "https://github.com/senseylabs/village"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/391053355",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "a0dc95366652b71a5b21868ea3cf866211f8ca40c070607e30520994fc3b09c9"
    end
    on_intel do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/391053354",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "e18bbae37e89e2f600db335d9568493c27af604142176bf6ab1da5d98f4564c7"
    end
  end

  on_linux do
    on_intel do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/391053357",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "77ca701986e70b20e89576dd4bae9af75eae9b4ed643fc5d16c3292b616e0e5a"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    system "#{bin}/kagi", "--version"
  end
end
