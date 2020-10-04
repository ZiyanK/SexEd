const { checkUserObject, checkUserUid } = require('../controllers/userControls');

const userLogin = async (req, res, next) => {
    try {
        console.log('Entered user auth')
        if (req.header("Authorization") === undefined) {
            throw new Error("Unauthorized")
        }
        const uid = req.header("Authorization").replace("Bearer ", "")
        await checkUserObject(uid)
        .then(() => {
            res.status(200).send({
                statusCode: 200,
                payload: {
                    msg: "User verified"
                }
            })
        })
        .catch(() => {
            res.status(400).send({
                statusCode: 400,
                payload: {
                    msg: "User not verified"
                }
            })
        })
        
    } catch (error) {
        res.status(400).send({
            statusCode: 404,
            payload: {
                msg: "Not found"
            }
        })
    }
}

module.exports = userLogin