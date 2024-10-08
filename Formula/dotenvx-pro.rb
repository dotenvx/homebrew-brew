# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class DotenvxPro < Formula
  desc "Dotenvx-pro cli"
  homepage "https://github.com/dotenvx/dotenvx-pro"
  url "https://github.com/dotenvx/dotenvx-pro/archive/refs/tags/v0.12.2.tar.gz"
  sha256 "d2b7779590b47a53ba80d5ea3ea13c198df93884e63890bc7bc0f92ddb88c818"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.12.2/dotenvx-pro-0.12.2-darwin-amd64.tar.gz"
      sha256 "551f2472b9011df99ac24f5395b9be7b9c96c87e2319a013762572f75aaa192d"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.12.2/dotenvx-pro-0.12.2-darwin-arm64.tar.gz"
      sha256 "18d885803eea6373e128391d1529354e2836e2668da4073e6df49d5a8be0d04d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.12.2/dotenvx-pro-0.12.2-linux-amd64.tar.gz"
      sha256 "7218fba823bd99edc9a545671f531f4f826f17a16b0eb444fab3308d2b2023c9"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx-pro/releases/download/v0.12.2/dotenvx-pro-0.12.2-linux-arm64.tar.gz"
      sha256 "9d3647ccab70e74c567926f9fe62128a3daa2c01d50bf3c4e8a734261d11a9ac"
    end
  end

  def install
    bin.install "dotenvx-pro";
  end

  test do
    system bin/"dotenvx-pro", "--version";
  end
end
