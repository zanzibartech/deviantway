import Vapor
import LeafProvider

let config = try Config()
try config.addProvider(LeafProvider.Provider.self)
let drop = try Droplet(config)

drop.get { request in
    return try drop.view.make("index.leaf")
}

try drop.run()
