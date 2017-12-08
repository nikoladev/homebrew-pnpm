require "language/node"

class Pnpm < Formula
  desc "Fast, disk space efficient package manager for Node"
  homepage "https://pnpm.js.org"
  url "https://registry.npmjs.org/@pnpm/bundled/-/bundled-1.23.1.tgz"
  sha256 "6545d6d1229bb91b37eb97c161f558d067c0bac480ba9b0fe695c6f9ced11691"

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