class Jlauncher < Formula
  url "https://github.com/programmiersportgruppe/j"
  desc "Fetches and executes jar files and their dependencies from maven"
  version "0.2.0"
  sha256 "beafd6c15b66d7d5c2f6cf35cd21d03e1ffadde3fce407441dac9a5100127a6d"

  def install
    system "gem", "install", name, "--version", version, "--install-dir", prefix
  end
end
