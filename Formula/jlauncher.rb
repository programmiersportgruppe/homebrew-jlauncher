class Jlauncher < Formula
  desc "Fetches and executes jar files and their dependencies from maven"
  version "0.2.0"
  homepage "https://github.com/programmiersportgruppe/j"
  url "https://github.com/programmiersportgruppe/j"

  uses_from_macos "ruby"

  resource "jlauncher" do
    url "https://rubygems.org/gems/jlauncher-0.2.0.gem"
    sha256 "8853e67c731b82bde9cce98234284c95df8b0d1bcd02b809603a6ae0edc13ffb"
  end

  def install
    ENV["GEM_HOME"] = libexec

    resources.each do |r|
      r.fetch
      system "gem", "install", r.cached_download, "--no-document", "--install-dir", libexec
    end

    bin.install Dir[libexec/"bin/j"]
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
