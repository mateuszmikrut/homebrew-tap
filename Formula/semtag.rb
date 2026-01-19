class Semtag < Formula
  include Language::Python::Virtualenv

  desc "Tool for managing semantic version tags in git repositories"
  homepage "https://github.com/mateuszmikrut/semtag"
  url "https://github.com/mateuszmikrut/semtag/releases/download/0.2.1/semtag-0.2.1.tar.gz"
  sha256 "fac4df3265db2e01fe53107307a9618a360464efb9aa06a15fdf7927f6c18f1d"
  license "MIT"

  depends_on "python@3.12"

  resource "gitpython" do
    url "https://files.pythonhosted.org/packages/source/g/gitpython/GitPython-3.1.43.tar.gz"
    sha256 "35f314a9f878467f5453cc1fee295c3e18e52f1b99f10f6cf5b1682e968a9e7c"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/source/g/gitdb/gitdb-4.0.11.tar.gz"
    sha256 "bf5421126136d6d0af55bc1e7c1af1c397a34f5b7bd79e776cd3e89785c2b04b"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/source/s/smmap/smmap-5.0.1.tar.gz"
    sha256 "dceeb6c0028fdb6734471eb07c0cd2aae706ccaecab45965ee83f11c8d3b1f62"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/semtag", "--help"
  end
end
