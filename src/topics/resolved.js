'use strict';

const topics = require('.');

module.exports = function (Topics) {
    Topics.markAsResolved = async function (tid) {
        try {
            const resolved = await topics.getTopicField(tid, ['resolved']);
            console.log(resolved, 'before:topicdata');
            if (resolved !== 'true') {
                await topics.setTopicField(tid, 'resolved', 'true');
                console.log('*************************************************Resolved');
            } else {
                await topics.setTopicField(tid, 'resolved', 'false');
                console.log('*************************************************Unresolved');
            }
            const topic = await topics.getTopicFields(tid, ['resolved']);
            console.log(topic, 'after:topicdata');
            return topic;
        } catch (err) {
            console.log(err);
        }
    };
};
