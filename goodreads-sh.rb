class GoodreadsSh < Formula
  version 'v0.4'
  desc "📙 Command line interface for Goodreads.com. Written in Rust."
  homepage "https://github.com/thundergolfer/goodreads-sh"

  if OS.mac?
      url "https://github.com/thundergolfer/goodreads-sh/releases/download/#{version}/goodreads-sh-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9d344dd190baec1384a2bbe61e2793d8c0957da935642744c582633ecaf0d76d"
  elsif OS.linux?
      url "https://github.com/thundergolfer/goodreads-sh/releases/download/#{version}/goodreads-sh-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "88da150269ca22a5036132b45b08692502f2c4ab19aebcfd1a7d6abb2bb02bfc"
  end

  bottle :unneeded

  def install
    bin.install "goodreads-sh"
  end

  test do
		system "#{bin}/goodreads-sh"
  end
end


