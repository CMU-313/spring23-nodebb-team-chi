import topics = require('../topics');

export type TopicObject = {
    tid: number;
    markAsResolved: (tid:number) => Promise<void>
};

module.exports = function (Topics:TopicObject) {
    Topics.markAsResolved = async function (tid:number) {
        // The next line calls a function in a module that has not been updated to TS yet
        // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access, @typescript-eslint/no-unsafe-call
        const resolved:string = await topics.getTopicField(tid, ['resolved']) as string;
        if (resolved !== 'true') {
            // The next line calls a function in a module that has not been updated to TS yet
            // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access, @typescript-eslint/no-unsafe-call
            await topics.setTopicField(tid, 'resolved', 'true');
        } else {
            // The next line calls a function in a module that has not been updated to TS yet
            // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access, @typescript-eslint/no-unsafe-call
            await topics.setTopicField(tid, 'resolved', 'false');
        }
    };
};
