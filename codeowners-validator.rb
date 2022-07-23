# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CodeownersValidator < Formula
  desc "Ensures the correctness of your CODEOWNERS file."
  homepage "https://github.com/mszostok/codeowners-validator"
  version "0.7.5-rc1"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mszostok/codeowners-validator/releases/download/v0.7.4/codeowners-validator_0.7.4_Darwin_x86_64.tar.gz"
      sha256 "2372dd11f0b34bfa57a956b99daadbed658fb6b45433df95a90d6569b0fa854b"

      def install
        bin.install "codeowners-validator"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mszostok/codeowners-validator/releases/download/v0.7.4/codeowners-validator_0.7.4_Darwin_arm64.tar.gz"
      sha256 "a381f961fbc863e851d173b8674a419e6627a3baab9cc2aefa4148eacf8794e4"

      def install
        bin.install "codeowners-validator"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mszostok/codeowners-validator/releases/download/v0.7.4/codeowners-validator_0.7.4_Linux_x86_64.tar.gz"
      sha256 "cd1733c45b304eaeb5cd09dba9a123a6f9405d2d6acf0d5f6839abf9ad9dcf4d"

      def install
        bin.install "codeowners-validator"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mszostok/codeowners-validator/releases/download/v0.7.4/codeowners-validator_0.7.4_Linux_arm64.tar.gz"
      sha256 "70256dfb71045027487e6573479da40c6f1a876e95402cf81717e73e140c4c77"

      def install
        bin.install "codeowners-validator"
      end
    end
  end

  test do
    system "#{bin}/codeowners-validator -v --short"
  end
end
