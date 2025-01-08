class R2c < Formula
  desc "Redmine to ClickUp migration tool"
  homepage "https://github.com/bajtyngier/r2c"
  url "https://github.com/bajtyngier/r2c/archive/refs/tags/1.1.1.tar.gz"
  sha256 "9783e3063f5870fb14d5364e31338f00c218b790034a36f1ef8569250e85106b"

  depends_on "python@3"

  def install
    prefix.install Dir["*"]
    (bin/"r2c").write <<~EOS
      #!/bin/bash
      exec python3 "#{prefix}/main.py" "$@"
    EOS
  end
end