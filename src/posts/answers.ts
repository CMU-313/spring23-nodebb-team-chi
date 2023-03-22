import posts = require('../posts');

export type PostObject = {
    pid: number;
    markAsAnswer: (pid:number) => Promise<void>
};

module.exports = function (Posts:PostObject) {
    Posts.markAsAnswer = async function (pid:number) {
        // The next line calls a function in a module that has not been updated to TS yet
        // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access, @typescript-eslint/no-unsafe-call
        const is_answer:string = await posts.getPostField(pid, ['is_answer']) as string;
        if (is_answer !== 'true') {
            // The next line calls a function in a module that has not been updated to TS yet
            // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access, @typescript-eslint/no-unsafe-call
            await posts.setPostField(pid, 'is_answer', 'true');
        } else {
            // The next line calls a function in a module that has not been updated to TS yet
            // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access, @typescript-eslint/no-unsafe-call
            await posts.setPostField(pid, 'is_answer', 'false');
        }
    };
};
