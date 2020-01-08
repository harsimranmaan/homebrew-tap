# This file was generated by GoReleaser. DO NOT EDIT.
class Qbec < Formula
  desc "Qbec (pronounced like the Canadian province) is a CLI tool that allows you to create Kubernetes objects on multiple Kubernetes clusters or namespaces configured correctly for the target environment in question."
  homepage "https://qbec.io/"
  version "0.10.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/splunk/qbec/releases/download/v0.10.4/qbec-darwin-amd64.tar.gz"
    sha256 "338b0df007bf2228ffccf230dba0520c4c0e21e18d81c8404b754a21d4917bf4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/splunk/qbec/releases/download/v0.10.4/qbec-linux-amd64.tar.gz"
      sha256 "e6255832f234b91e04fed5060012245b00838e0526b60c8989878f73e7b8dd9e"
    end
  end

  def install
    bin.install "qbec"
  end

  test do
    system "#{bin}/qbec version"
  end
end
