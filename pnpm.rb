require "language/node"

class Pnpm < Formula
  desc "Fast, disk space efficient package manager for Node"
  homepage "https://pnpm.js.org"
  url "https://registry.npmjs.org/@pnpm/bundled/-/bundled-1.23.2.tgz"
  sha256 "5b3a6fbce64f2e1e45e44ddbf0836226794c9a78d114a35a413ca9bb1ee1c41a"

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