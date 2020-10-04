const { admin, database } = require('../utils/firebase')

const createUser = (user) => {
    return new Promise((resolve, reject) => {
        const userRef = database.collection('Users').doc(user.uid)
        userRef.set({
            uid: user.uid,
            email: user.email,
            name: user.name
        })
            .then((resp) => {
                console.log(chalk.green("New user details saved in db"))
                resolve({
                    statusCode: 200,
                    payload: {
                        msg: "User created.",
                    },
                    wasUserRegistered: false,
                    isRegSuccess: true,
                })
            })
            .catch((e) => {
                console.log(chalk.red("Error in saving user details to db"))
                reject({
                    statusCode: 400,
                    payload: {
                        msg: "Server Side error contact support"
                    },
                    wasUserRegistered: false,
                    isRegSuccess: false,
                })
            })

    })
}

const checkUserUid = (uid) => {
    console.log("checkuseruid")
    return new Promise((resolve, reject) => {
        admin.auth().getUser(uid)
            .then((resp) => {
                console.log(chalk.green("User uid verified!"))
                resolve(resp)
            })
            .catch((err) => {
                console.log(chalk.red("User UID Not verified from authentication!"))
                reject({ error: err.message, message: "Unauthorised" })
            })
    })
}

const checkUserObject = (uid, resp) => {
    return new Promise(async (resolve, reject) => {
        console.log("Entered checkUserObject")
        const userRef = await database.collection('Users').doc(uid)
        console.log("wait")
        userRef.get()
            .then((docSnapshot) => {
                console.log("got docSnapshot")
                console.log(docSnapshot)
                if (docSnapshot._fieldsProto !== undefined) {
                    console.log(docSnapshot.exists)
                    resolve({
                        statusCode: 200,
                        payload: {
                            msg: "User Checked",
                            responce: resp
                        }
                    })
                } else {
                    console.log("400")
                    reject({
                        statusCode: 400,
                        payload: {
                            msg: "User not found"
                        }
                    })
                }
            })
            .catch((err) => {
                console.log(chalk.red("User uid un-verified from database!"))
                reject({
                    statusCode: 400,
                    error: err.message,
                    message: "Unauthorised"
                })
            })
    })
}

const getUserInfo = (uid) => {
    return new Promise((resolve, reject) => {
        console.log(chalk.yellow("Getting user info..."))
        const userRef = database.collection('Users').doc(uid)
        userRef.get()
            .then((docSnapshot) => {
                if (docSnapshot.exists) {
                    userRef.onSnapshot((doc) => {
                        console.log(chalk.green("User exists!"));
                        console.log(doc._fieldsProto)
                        resolve(true)
                    });
                }
                else {
                    resolve(false)
                }
            }).catch((err) => {
                console.log(chalk.red("Error in fetching user details!"));
                reject(err)
            })
    })
}

const getContent = () => {
    return new Promise((resolve, reject) => {
        const arr = [];
        const contentRef = database.collection('content')
        contentRef.get()
        .then((collection) => {
            collection.forEach(doc => {
                arr.push(doc.data());
            })
            resolve({
                statusCode: 200,
                content: arr
            })
        })
        .catch((error) => {
            reject({
                statusCode: 400,
                err: error
            })
        })
    })
}

const forumNewPost = (uid, title, description) => {
    return new Promise((resolve, reject) => {
        const dataAddRef = database.collection('forum').doc().set({
            title: title,
            description: description,
            uid: uid,
            upvotes: 0,
            comments: []
        })
        .then(() => {
            resolve({
                statusCode: 200,
                msg: 'New post on forum added successfully.'
            })
        })
        .catch((error) => {
            reject({
                statusCode: 400,
                error: error
            })
        })
    })
}

const upvoteForumPost = (postuid) => {
    return new Promise((resolve, reject) => {
        const dataAddRef = database.collection('forum').doc(postuid).update({
            upvotes: upvotes + 1
        })
        .then(() => {
            resolve({
                statusCode: 200,
                msg: 'Post has been upvoted.'
            })
        })
        .catch((error) => {
            reject({
                statusCode: 400,
                error: error
            })
        })
    })
}

const addCommentToPost = (postuid, comment) => {
    return new Promise((resolve, reject) => {
        const dataAddRef = database.collection('forum').doc(postuid).update({
            comments: comments.push(comment)
        })
        .then(() => {
            resolve({
                statusCode: 200,
                msg: 'Comment has been added.'
            })
        })
        .catch((error) => {
            reject({
                statusCode: 400,
                error: error
            })
        })
    })
}

const getAllForumPosts = () => {
    return new Promise((resolve, reject) => {
        const arr = [];
        const forumRef = database.collection('forum')
        forumRef.get()
        .then((collection) => {
            collection.forEach(doc => {
                arr.push(doc.data());
            })
            resolve({
                statusCode: 200,
                content: arr
            })
        })
        .catch((error) => {
            reject({
                statusCode: 400,
                err: error
            })
        })
    })
}

const getForumPost = (postuid) => {
    return new Promise((resolve, reject) => {
        const forumRef = database.collection('forum').doc(postuid)
        forumRef.get()
        .then((doc) => {
            resolve({
                statusCode: 200,
                data: doc.data()
            })
        })
        .catch((error) => {
            reject({
                statusCode: 400,
                error: error
            })
        })
    })
}

module.exports = {
    createUser,
    checkUserUid,
    getUserInfo,
    checkUserObject,
    getContent,
    forumNewPost,
    getAllForumPosts,
    getForumPost,
    addCommentToPost,
    upvoteForumPost
}