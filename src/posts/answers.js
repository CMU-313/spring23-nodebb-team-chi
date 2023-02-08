'use strict';
const db = require('../database');

module.exports = function (Posts) {
    Posts.markAsAnswer = async function (pid, uid) {
        console.log("we get here!!!!!!!!")
        const test = await db.getObject(`pid:${pid}:answer`);
        if (test == null){
            db.sortedSetAdd(`pid:${pid}:answer`, Date.now(), 'true');
        }else{
            db.sortedSetRemove(`pid:${pid}:answer`, 'true');
        }
        
        console.log(test);

        return test;
    }

}