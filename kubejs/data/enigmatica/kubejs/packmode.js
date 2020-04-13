events.listen('server.datapacks.first', function(event) {
    var config = json.read("config/packmode.json");
    if(!config || !config.packmode) {
        config = { packmode: "normal" };
      json.write("config/packmode.json", config);
    }
    global.packmode = config.packmode;
  })