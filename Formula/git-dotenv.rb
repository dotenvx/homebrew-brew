# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class GitDotenv < Formula
  desc "More secure, standalone, cross-platform dotenv - from the creator of dotenv"
  homepage "https://github.com/dotenv-org/git-dotenv"
  url "https://github.com/dotenv-org/git-dotenv/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "7407d296f5b2c16c57b52de229b0cfb3d47721e8edfe54aea3bfd84d8bffcb63"

  on_macos do
    on_intel do
      url "https://github.com/dotenv-org/git-dotenv/releases/download/v0.1.10/git-dotenv-0.1.10-darwin-amd64.tar.gz"
      sha256 "60cf3d42dd9eef3860f46beb17d6da756d51428ee6ba4f7ca4fe8b60ff38f025"
    end

    on_arm do
      url "https://github.com/dotenv-org/git-dotenv/releases/download/v0.1.10/git-dotenv-0.1.10-darwin-arm64.tar.gz"
      sha256 "49b1fd05980d125400acd4311731fa126816584ba97a4a65085f7077b9745f01"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenv-org/git-dotenv/releases/download/v0.1.10/git-dotenv-0.1.10-linux-amd64.tar.gz"
      sha256 "df2ece0aa30f33679fe2f048aed9fe15e6f395923cc6ccd238c649b44ad57d8a"
    end

    on_arm do
      url "https://github.com/dotenv-org/git-dotenv/releases/download/v0.1.10/git-dotenv-0.1.10-linux-arm64.tar.gz"
      sha256 "2c2e8c52dc32f684e41560d49f30491fa2a17165840f0e6f1e908ed4d6e94ac9"
    end
  end

  def install
    bin.install "git-dotenv"
  end

  test do
    system bin/"git-dotenv", "--version"
  end
end
