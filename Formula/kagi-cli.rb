class KagiCli < Formula
  desc "Kagi CLI — secrets management for Sensey"
  homepage "https://github.com/senseylabs/village"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/388979840",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "b3dbf9ce5b54b1f2897af0ed1bc3a3a5deec0a9643008326c7806177f05f489b"
    end
    on_intel do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/388979839",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "8acb98edc605d5713d1a98c7f7624d8efa09e4e6acab97197af1229956483fa4"
    end
  end

  on_linux do
    on_intel do
      url "https://api.github.com/repos/senseylabs/village/releases/assets/388979850",
          headers: ["Accept: application/octet-stream", "Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"]
      sha256 "c6c4e46c7fa00274fbaa10cbd3d6fa7f8f35a865934d436c2988b4d9418f14ef"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    system "#{bin}/kagi", "--version"
  end
end
