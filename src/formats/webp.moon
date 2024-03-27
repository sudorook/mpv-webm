class WebP extends Format
	new: =>
		@displayName = "WebP"
		@supportsTwopass = false
		@videoCodec = "libwebp"
		@audioCodec = ""
		@outputExtension = "webp"
		@acceptsBitrate = false

	getFlags: =>
		{
			"--ofopts-add=loop=0",
			"--ovcopts-add=quality=good",
			"--ovcopts-add=threads=#{options.threads}",
			"--ovcopts-add=cpu-used=0",
		}

formats["webp"] = WebP!

