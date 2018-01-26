require "language/node"

class Pnpm < Formula
  desc "Fast, disk space efficient package manager for Node"
  homepage "https://pnpm.js.org"
  url "https://registry.npmjs.org/@pnpm/bundled/-/bundled-1.25.1.tgz"
  sha256 "4c5e66f579f04527709e1ad7c35cb1be54aa785ec5c40c936b24fd3c003fae1c"

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