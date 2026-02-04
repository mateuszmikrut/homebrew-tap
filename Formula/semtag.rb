class Semtag < Formula
  include Language::Python::Virtualenv

  desc "Tool for managing semantic version tags in git repositories"
  homepage "https://github.com/mateuszmikrut/semtag"
  url "https://github.com/mateuszmikrut/semtag/releases/download/0.3.1/semtag-0.3.1.tar.gz"
  sha256 "c48b1f8733ffe8d5baf5f821d8baa26d2cc22b76486665624bbf8818e10fddeb"
  version "0.3.1"
  license "MIT"

  depends_on "python@3.12"

  
  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/72/94/63b0fc47eb32792c7ba1fe1b694daec9a63620db1e313033d18140c2320a/gitdb-4.0.12.tar.gz"
    sha256 "5ef71f855d191a3326fcfbc0d5da835f26b13fbcba60c32c21091c349ffdb571"
  end
  resource "GitPython" do
    url "https://files.pythonhosted.org/packages/9a/c8/dd58967d119baab745caec2f9d853297cec1989ec1d63f677d3880632b88/gitpython-3.1.45.tar.gz"
    sha256 "85b0ee964ceddf211c41b9f27a49086010a190fd8132a24e21f362a4b36a791c"
  end
  resource "smmap" do
    url "https://files.pythonhosted.org/packages/44/cd/a040c4b3119bbe532e5b0732286f805445375489fceaec1f48306068ee3b/smmap-5.0.2.tar.gz"
    sha256 "26ea65a03958fa0c8a1c7e8c7a58fdc77221b8910f6be2131affade476898ad5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/semtag", "--help"
  end
end
