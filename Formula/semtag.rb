class Semtag < Formula
  include Language::Python::Virtualenv

  desc "Tool for managing semantic version tags in git repositories"
  homepage "https://github.com/mateuszmikrut/semtag"
  url "https://github.com/mateuszmikrut/semtag/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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
