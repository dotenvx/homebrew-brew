# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v0.26.0.tar.gz"
  sha256 "457e7928755ec0f2ed77084e91915a1c97e8e1de3d07739ef626644df454bb31"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.26.0/dotenvx-0.26.0-darwin-amd64.tar.gz"
      sha256 "160638208d4557d70adc8e5d880c43edb8b5768175cd603a625f86fc9f9b6031"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.26.0/dotenvx-0.26.0-darwin-arm64.tar.gz"
      sha256 "b477fca7be3b7bf1175da48be3929546f525ae35795e5b489c349fd4a7177ee0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.26.0/dotenvx-0.26.0-linux-amd64.tar.gz"
      sha256 "8b8a6f1cd325cc71699626f4f9f080f721107855a33aa9cd469ac85462137e42"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v0.26.0/dotenvx-0.26.0-linux-arm64.tar.gz"
      sha256 "2e766ab696bb94c34da8007749c5bf3365422369a587a0be5a52e2fe1c032162"
    end
  end

  def install
    bin.install "dotenvx"; bin.install_symlink "dotenvx" => "git-dotenvx";
  end

  test do
    system bin/"dotenvx", "--version";
  end
end
