# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DockerEnv < Formula
  desc "Per branch docker compose environment manager"
  homepage "https://github.com/marcinhlybin/docker-env"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/marcinhlybin/docker-env/releases/download/v1.0.0/docker-env_1.0.0_darwin_amd64.tar.gz"
      sha256 "aa784c5f9804f89688aa0ccaba4f5c47583db79c4dedebd443ddcc53b6b65e14"

      def install
        bin.install "docker-env"
      end
    end
    on_arm do
      url "https://github.com/marcinhlybin/docker-env/releases/download/v1.0.0/docker-env_1.0.0_darwin_arm64.tar.gz"
      sha256 "0392d649cf004cd37f091eef40921aec146c36b287789f0293484c489ffdb5f7"

      def install
        bin.install "docker-env"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/marcinhlybin/docker-env/releases/download/v1.0.0/docker-env_1.0.0_linux_amd64.tar.gz"
        sha256 "e423e43a2830e89bdea014728a4b52cb2920d28f67a3abc03eb17e708fa63234"

        def install
          bin.install "docker-env"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/marcinhlybin/docker-env/releases/download/v1.0.0/docker-env_1.0.0_linux_arm64.tar.gz"
        sha256 "1cc4fc0aa1a7cb2d25c04a606239d8c553f81d43f588d9823c7b5332a3d49e4f"

        def install
          bin.install "docker-env"
        end
      end
    end
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/docker-env --version")
  end
end
