class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/1.0.0.tar.gz"
  sha256 "0e0f743a6b407e8914a6c3b3a01bf1edc889acc574472c18af6fad9c88824906"

  depends_on "python@3"

  def install
    prefix.install Dir["*"]
    (bin/"r2c").write <<~EOS
      #!/bin/bash
      exec python3 "#{prefix}/main.py" "$@"
    EOS
  end
end