'use strict';
const db = require('../database');
const posts = require('../posts');
module.exports = function (Posts) {
    Posts.markAsAnswer = async function (pid, uid) {
        
        const test = await db.getObject(`pid:${pid}:answer`);
        console.log(test, "before: test")
        if (test == null){
            db.sortedSetAdd(`pid:${pid}:answer`, Date.now(), 'true');
            console.log(test, "test is null, saving to db")
        }else{
            db.sortedSetRemove(`pid:${pid}:answer`, 'true');
            console.log(test, "test is true, removing from db")
        }
        
        const postAnswer = await posts.getPostField(pid, ['answer']);
        console.log(postAnswer, 'before:postdata');
        if (postAnswer == null){
            console.log("answer is null, setting to 1")
            await posts.setPostField(pid, 'answer', 1);
        }else{
            console.log("answer is 1, setting to null")
            await posts.setPostField(pid, 'answer', null);
        }
        const post = await posts.getPostFields(pid, ['answer']);
        console.log(post, 'after:postdata');
        return post;

    }

}