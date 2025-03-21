# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.39.0.tar.gz"
  sha256 "37dcdbab1cbfe4591926a329b3e023f1f98273d65f2c4beef969787c11a421f1"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.39.0/dotenvx-1.39.0-darwin-amd64.tar.gz"
      sha256 "8e0bd45a85f852214164635124ce67f692651072c41dadbdc1abe786dbcab199"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.39.0/dotenvx-1.39.0-darwin-arm64.tar.gz"
      sha256 "32e34702c6885b7e9976dbf327ec3194781004a005468bb36edeff18b7a65ed4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.39.0/dotenvx-1.39.0-linux-amd64.tar.gz"
      sha256 "98c3062c3b413c971453cc868d12c8e7469e6a46d3b4fb677313b42d290e51cf"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.39.0/dotenvx-1.39.0-linux-arm64.tar.gz"
      sha256 "1115af0919184679eb7961f7baa04d2241775024a4dedc80eafb77e1de5b8d2c"
    end
  end

  def install
    bin.install "dotenvx"
bin.install_symlink "dotenvx" => "git-dotenvx"
  end

  test do
    system bin/"dotenvx", "--version"
  end
end
