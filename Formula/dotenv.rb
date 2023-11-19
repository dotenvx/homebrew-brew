# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenv < Formula
  desc "“dotenv made better“ from the creator of `dotenv`"
  homepage "https://github.com/dotenv-org/dotenv"
  url "https://github.com/dotenv-org/dotenv/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "98ba11a90bac4a9e8a27535a1b9d5525164369f0f9918cfde379d635ba593e90"

  on_macos do
    on_intel do
      url "https://github.com/dotenv-org/dotenv/releases/download/v0.2.0/dotenv-0.2.0-darwin-amd64.tar.gz"
      sha256 "e00f569f4efe27f9b82376e0bdc77b49562ebe7f74fd649a34ed4c530d1d7122"
    end

    on_arm do
      url "https://github.com/dotenv-org/dotenv/releases/download/v0.2.0/dotenv-0.2.0-darwin-arm64.tar.gz"
      sha256 "797adf6b36c7d84535a489b8f132bde96b3489f311456f70dd43803918761977"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenv-org/dotenv/releases/download/v0.2.0/dotenv-0.2.0-linux-amd64.tar.gz"
      sha256 "c4d1cf60b5d868b7a5165f5f962482eb3491fa64b8401690f6ef3278ca97b601"
    end

    on_arm do
      url "https://github.com/dotenv-org/dotenv/releases/download/v0.2.0/dotenv-0.2.0-linux-arm64.tar.gz"
      sha256 "cfa016424448c311b7f59eba0546a593508ce566e58d6279a363cf81be350f56"
    end
  end

  def install
    bin.install "dotenv"
bin.install_symlink "dotenv" => "git-dotenv"
  end

  test do
    system bin/"dotenv", "--version"
  end
end