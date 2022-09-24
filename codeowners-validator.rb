# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CodeownersValidator < Formula
  desc "Ensures the correctness of your CODEOWNERS file."
  homepage "https://github.com/mszostok/codeowners-validator"
  version "0.7.4"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mszostok/codeowners-validator/releases/download/v0.7.4/codeowners-validator_0.7.4_Darwin_x86_64.tar.gz"
      sha256 "9170d4bcea3d638a02e198bda01be2faa549ceeafe4deaec94f90ea901bc7b68"

      def install
        bin.install "codeowners-validator"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mszostok/codeowners-validator/releases/download/v0.7.4/codeowners-validator_0.7.4_Darwin_arm64.tar.gz"
      sha256 "589295a9c012e2325dbf237730709bedae2237b7c46d7eaf1e13095c1bb84c26"

      def install
        bin.install "codeowners-validator"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mszostok/codeowners-validator/releases/download/v0.7.4/codeowners-validator_0.7.4_Linux_x86_64.tar.gz"
      sha256 "334a74bf2b21ba498d90fcb7b0dced8df33ebc2467b4eaa360db0ba8bfc76338"

      def install
        bin.install "codeowners-validator"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mszostok/codeowners-validator/releases/download/v0.7.4/codeowners-validator_0.7.4_Linux_arm64.tar.gz"
      sha256 "d2399b8eee6cb8e82635cd21eb8989fb9fcd3c29b25c78edbc810b7cea16ead0"

      def install
        bin.install "codeowners-validator"
      end
    end
  end

  test do
    system "#{bin}/codeowners-validator -v --short"
  end
end
