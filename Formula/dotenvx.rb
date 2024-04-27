# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.36.1.tar.gz"
  sha256 "ebe74515d23250b68a82640b61a63d5685bcc3013c24ff55f29ccde3e41620da"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.36.1/dotenvx-0.36.1-darwin-amd64.tar.gz"
      sha256 "5e5f294092a73a6a9bb6733d0c7c2512bf2947d7a252719488c2a97b4c7ad7b9"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.36.1/dotenvx-0.36.1-darwin-arm64.tar.gz"
      sha256 "68e200bbc92c9240fea7d677aeec0e1e863d62da5b3ad26bc09659663cd396e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.36.1/dotenvx-0.36.1-linux-amd64.tar.gz"
      sha256 "fba047a1ff54b80bf1195ccf7f763165836cb38389d0ca7781ef760ada29fd47"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.36.1/dotenvx-0.36.1-linux-arm64.tar.gz"
      sha256 "9ecc6cfb90037b48fcfd48076e5392e108e7604508a61d84ac93ec9e6814c114"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
