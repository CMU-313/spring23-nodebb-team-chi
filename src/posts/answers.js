'use strict';
const db = require('../database');
const posts = require('../posts');
module.exports = function (Posts) {
    Posts.markAsAnswer = async function (pid, uid) {
        try{
            const is_answer = await posts.getPostField(pid, ['is_answer']);
            if (is_answer !== 'true'){
                await posts.setPostField(pid, 'is_answer', 'true');
            }else{
                await posts.setPostField(pid, 'is_answer', 'false');
            }
            const post = await posts.getPostFields(pid, ['is_answer']);
            return post;
        }
        catch(err){
            console.log(err);
        }
    }
}