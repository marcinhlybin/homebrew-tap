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
      sha256 "1341a8a70657b697a44c6365ef778732d0c79d6b20ab0248d1483d06622073f1"

      def install
        bin.install "docker-env"
      end
    end
    on_arm do
      url "https://github.com/marcinhlybin/docker-env/releases/download/v1.0.0/docker-env_1.0.0_darwin_arm64.tar.gz"
      sha256 "2375672f00c5d3a7b8caeddf3fe34f92412cbeff23a048acce335f4fcf802f33"

      def install
        bin.install "docker-env"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/marcinhlybin/docker-env/releases/download/v1.0.0/docker-env_1.0.0_linux_amd64.tar.gz"
        sha256 "789ccdf33172f4fdecd3d0cfd11a639f4202912779463eb775ab6f3d96ba248f"

        def install
          bin.install "docker-env"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/marcinhlybin/docker-env/releases/download/v1.0.0/docker-env_1.0.0_linux_arm64.tar.gz"
        sha256 "14fb09a5543dbd8d275f00c387152fbad52cad0c510bc1832e316b5fe504c39b"

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