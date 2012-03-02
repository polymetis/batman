helpers = require 'sha_summarizer'

header "Object Overhead"

keys = ["object instantiation memory usage", "object instantiation with observers memory usage"]
shas = helpers.getAvailableShas(keys)

header "Objects"
linechart helpers.summarizeShasForKey(shas, keys[0])

header "Objects with Observers and Events"
linechart helpers.summarizeShasForKey(shas, keys[1])
