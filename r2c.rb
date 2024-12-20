class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/0.0.6.tar.gz"
  sha256 "6f943dc48599c9ff53cf1bcfde733e96b4d0127198b44c6a4fcd554851be3faa"
  depends_on "python"

  def install
    # Ensure the r2c directory exists
    prefix.install Dir["*"]  # Install all files in the current directory

    # Install all files into r2c/ directory under Homebrew installation
    bin.install "main.py" => "r2c"  # Symlink main.py as 'r2c'
    prefix.install "r2c"  # Move all files into r2c/ folder if necessary
  end
end