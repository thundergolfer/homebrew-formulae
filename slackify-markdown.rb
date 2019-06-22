class SlackifyMarkdown < Formula
  version 'v0.1.6'
  desc "Convert Markdown into Slack's bastardized Markdown-like formatting"
  homepage "https://github.com/thundergolfer/slackify-markdown"

  if OS.mac?
      url "https://github.com/thundergolfer/slackify-markdown/releases/download/#{version}/slackify-markdown-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1d7978429793172747455f9aed03a47c4c7b5d3f4030e2b9c06262e70b45b3dc"
  elsif OS.linux?
      url "https://github.com/thundergolfer/slackify-markdown/releases/download/#{version}/slackify-markdown-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46589942509e138cb5557fe05b443ae53fdf14b9ab6b041af1463ee9ab84439e"
  end

  bottle :unneeded

  def install
    bin.install "rg"
  end

  test do
		system "#{bin}/goodreads"
	end
end

