const { checkUserObject, checkUserUid } = require('../controllers/userControls');

const userAuth = async (req, res, next) => {
    try {
        console.log('Entered user auth')
        if (req.header("Authorization") === undefined) {
            throw new Error("Unauthorized")
        }
        const uid = req.header("Authorization").replace("Bearer ", "")
        await checkUserUid(uid)
        await checkUserObject(uid)
        req.body.uid = uid
        next()
    } catch (error) {
        res.status(400).send({
            statusCode: 400,
            payload: {
                err: error
            }
        })
    }
}

module.exports = userAuth