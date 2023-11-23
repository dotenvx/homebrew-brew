# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "ab9f59e650eb37248b0b27a4c6b75391fcdb1a7f407ab7e65916707db967f964"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.2/dotenvx-0.3.2-darwin-amd64.tar.gz"
      sha256 "a7396b1bbc61f3423848768a102b775754a0303ca5884a0727389e5515034eb4"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.2/dotenvx-0.3.2-darwin-arm64.tar.gz"
      sha256 "bc14932e19a8235654c655dd24cfaf1673a76a262b34228b94ab3e82f535c5f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.2/dotenvx-0.3.2-linux-amd64.tar.gz"
      sha256 "1c6d7c0924df266d3bdbf32eeab9f14789f7efeaf83ca68511c0e7c193531389"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.3.2/dotenvx-0.3.2-linux-arm64.tar.gz"
      sha256 "1f9ed9dec2745fc3ff7fc701bb4fedb6ebe368e619da13ec481246ba94b4eb24"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
