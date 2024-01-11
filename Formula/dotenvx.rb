# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.8.4.tar.gz"
  sha256 "430c003591a8eab0cfcbef73ea6f65568f58a4b6435759c10050edabcbe1f7ff"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.8.4/dotenvx-0.8.4-darwin-amd64.tar.gz"
      sha256 "95170de032cf94ff102b676296f21d00b529c7d7829881b1b741811255e7d5a5"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.8.4/dotenvx-0.8.4-darwin-arm64.tar.gz"
      sha256 "c98f66c7ab22b9644f41e066e6bc67c92775620a6d4f58b34b91cbae20af0ca9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.8.4/dotenvx-0.8.4-linux-amd64.tar.gz"
      sha256 "d59df8f39936f44e5f7b6c4be4adf3c176ac2f970aaa4a3e5051047d04689472"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.8.4/dotenvx-0.8.4-linux-arm64.tar.gz"
      sha256 "f34d8acfab143bf77e7bb19aeeb6c85d3150c8772bc341274b7489bea679ce49"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
