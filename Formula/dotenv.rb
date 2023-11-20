# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenv < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenv-org/dotenv"
  url "https://github.com/dotenv-org/dotenv/archive/refs/tags/v0.2.15.tar.gz"
  sha256 "e03b221d201ed1bcb410e26664b320232683926e9759804f2801558f1086cfbf"

  on_macos do
    on_intel do
      url "https://github.com/dotenv-org/dotenv/releases/download/v0.2.15/dotenv-0.2.15-darwin-amd64.tar.gz"
      sha256 "6f7d983643a1eb80d89badfedfee3976fd464ed1d3e92d43b01b160acfb7bde4"
    end

    on_arm do
      url "https://github.com/dotenv-org/dotenv/releases/download/v0.2.15/dotenv-0.2.15-darwin-arm64.tar.gz"
      sha256 "1513f1e0ec9bb5a438434a2084161b8c2cd52602f42571cc56d92d4fb91fd95b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenv-org/dotenv/releases/download/v0.2.15/dotenv-0.2.15-linux-amd64.tar.gz"
      sha256 "ba81aa31bd10ec662326e45105a8d6f366809bb045ce247eba09ecfd8742b27c"
    end

    on_arm do
      url "https://github.com/dotenv-org/dotenv/releases/download/v0.2.15/dotenv-0.2.15-linux-arm64.tar.gz"
      sha256 "c338d01a965c51a22161f0d3e2a5d472fb1a3ca64d8a6c0c357167d64c8891c9"
    end
  end

  def install
    bin.install "dotenv"; bin.install_symlink "dotenv" => "git-dotenv";bin.install "dotenv2"; bin.install_symlink "dotenv2" => "git-dotenv2"
  end

  test do
    system bin/"dotenv", "--version";system bin/"dotenv2", "--version";
  end
end
