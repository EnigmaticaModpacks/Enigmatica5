events.listen('server.datapacks.first', function (event) {
    const packmodes = Object.freeze({ normal: 'normal', expert: 'expert' })
    var config = json.read('config/packmode.json')
    if (!config || !config.packmode) {
        config = {
            packmode: 'normal',
            message: 'Valid modes are normal and expert.',
        }
        json.write('config/packmode.json', config)
    }
    global.packmode = config.packmode
})
