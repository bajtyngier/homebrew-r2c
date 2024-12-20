class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/0.0.3.tar.gz"
  sha256 "722a9d46b481328cc4f3489e73bfff9e60859c7fa1016324b1525b67fbd3730e"
  depends_on "python"

  def install
    chmod "+x", "r2c/main.py"
    bin.install "r2c/main.py" => "r2c"
    prefix.install Dir["*"]
  end
end