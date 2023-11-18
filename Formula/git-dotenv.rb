class GitDotenv < Formula
  desc "A more secure, standalone, cross-platform dotenv - from the creator of dotenv"
  homepage "https://github.com/dotenv-org/git-dotenv"
  url "https://github.com/dotenv-org/git-dotenv/releases/download/v0.1.0/git-dotenv-darwin-arm64.tar.gz"
  sha256 "e7bda2abe2ad970c607c2dff1c3f23c00b5e2b31648e5a164d0fa20fc62c6df1"

  def install
    bin.install "git-dotenv"
  end

  def test
    system bin/"git-dotenv", "--version"
  end
end
