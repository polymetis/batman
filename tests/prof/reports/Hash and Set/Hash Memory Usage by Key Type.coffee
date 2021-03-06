helpers = require 'sha_summarizer'

header "Simple Hash Memory Usage by Key type"

keys = ["simple hash memory usage with objects", "simple hash memory usage with strings"]
shas = helpers.getAvailableShas(keys)

header "Objects (megabytes)"
linechart helpers.summarizeShasForKey(shas, keys[0])

header "Strings (megabytes)"
linechart helpers.summarizeShasForKey(shas, keys[1])

header "Comparison for first SHA (megabytes)"

linechart helpers.summarizeKeysForSha(keys, shas[0])
