class GoodreadsSh < Formula
  version 'v0.1'
  desc "📙 Command line interface for Goodreads.com. Written in Rust."
  homepage "https://github.com/thundergolfer/goodreads-sh"

  if OS.mac?
      url "https://github.com/thundergolfer/goodreads-sh/releases/download/#{version}/slackify-markdown-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 ""
  elsif OS.linux?
      url "https://github.com/thundergolfer/gooreads-sh/releases/download/#{version}/slackify-markdown-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 ""
  end

  bottle :unneeded

  def install
    bin.install "goodreads-sh"
  end

  test do
		system "#{bin}/goodreads-sh"
	end
end


