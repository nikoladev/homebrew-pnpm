require "language/node"

class Pnpm < Formula
  desc "Fast, disk space efficient package manager for Node"
  homepage "https://pnpm.js.org"
  url "https://registry.npmjs.org/@pnpm/bundled/-/bundled-1.31.2.tgz"
  sha256 "7ea326f1d547fd4318e62b18b81094344f0a64934346491c1776ac87271aaf6c"

  bottle :unneeded

  depends_on "node"

  def install
    
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]

  end

  test do
    system "false"
  end
end