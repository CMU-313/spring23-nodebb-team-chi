'use strict';

module.exports = function (Posts) {
    Posts.markAsAnswer = async function (pid, uid) {
        console.log("hello pid: ", pid)
        // return await db.sortedSetAdd(`uid:${uid}:markAsAnswer`, now, pid);
    }
}