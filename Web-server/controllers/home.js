exports.home = function(req, res) {
    res.render('home/index', {
        logged : req.logged,
        admin : req.admin,
        captain : req.captain
    })
}

exports.autor = function(req, res) {
    res.render('home/author', {
        logged : req.logged,
        admin : req.admin,
        captain : req.captain
    })
}