const router = require('express')();

const userCreate = require('../middlewares/userCreate');
const userLogin = require('../middlewares/loginMiddleware');
const userControls = require('../controllers/userControls');

router.post('/create',[userCreate], (req, res) => {
    userControls.createUser(req.user)
        .then(resp => res.status(200).send(resp))
        .catch(err => res.status(400).send(err))
})

router.post('/login',[userLogin], (req, res) => {
    userControls.createUser(req.user)
        .then(resp => res.status(200).send(resp))
        .catch(err => res.status(400).send(err))
})

router.get('/content', (req, res) => {
    userControls.getContent()
        .then(resp => res.status(200).send(resp))
        .catch(err => res.status(400).send(err))
})

router.post('/addForum', (req, res) => {
    userControls.forumNewPost(req.user.uid, req.body.title, req.body.description)
        .then(resp => res.status(200).send(resp))
        .catch(err => res.status(400).send(err))
})

router.post('/addCommentToPost', (req, res) => {
    userControls.addCommentToPost(req.user.uid, req.body.comment)
        .then(resp => res.status(200).send(resp))
        .catch(err => res.status(400).send(err))
})

router.post('/upvoteForumPost', (req, res) => {
    userControls.upvoteForumPost(req.user.uid)
        .then(resp => res.status(200).send(resp))
        .catch(err => res.status(400).send(err))
})

router.get('/getForumPosts', (req, res) => {
    userControls.getAllForumPosts()
        .then(resp => res.status(200).send(resp))
        .catch(err => res.status(400).send(err))
})

router.get('/getForumPost', (req, res) => {
    userControls.getForumPost(req.body.postuid)
        .then(resp => res.status(200).send(resp))
        .catch(err => res.status(400).send(err))
})

module.exports = router;