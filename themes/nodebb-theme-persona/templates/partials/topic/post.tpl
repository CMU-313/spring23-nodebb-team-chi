<div class="clearfix post-header">
    <div class="icon pull-left">
        <a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
            {buildAvatar(posts.user, "sm2x", true, "", "user/picture")}
            <i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
        </a>
    </div>

    <small class="pull-left">
        <strong>
            <a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.displayname}</a>
        </strong>

        <!-- IMPORT partials/topic/badge.tpl -->

        <!-- IF posts.user.banned -->
        <span class="label label-danger">[[user:banned]]</span>
        <!-- ENDIF posts.user.banned -->

        <span class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
            <!-- IF posts.toPid -->
            <a component="post/parent" class="btn btn-xs btn-default hidden-xs" data-topid="{posts.toPid}" href="{config.relative_path}/post/{posts.toPid}"><i class="fa fa-reply"></i> @<!-- IF posts.parent.username -->{posts.parent.username}<!-- ELSE -->[[global:guest]]<!-- ENDIF posts.parent.username --></a>
            <!-- ENDIF posts.toPid -->

            <span>
                <!-- IF posts.user.custom_profile_info.length -->
                &#124;
                {{{each posts.user.custom_profile_info}}}
                {posts.user.custom_profile_info.content}
                {{{end}}}
                <!-- ENDIF posts.user.custom_profile_info.length -->
            </span>
        </span>

    </small>
    <small class="pull-right">
        <span class="bookmarked"><i class="fa fa-bookmark-o"></i></span>
    </small>
    <small class="pull-right">
        <i component="post/edit-indicator" class="fa fa-pencil-square<!-- IF privileges.posts:history --> pointer<!-- END --> edit-icon <!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->"></i>

        <small data-editor="{posts.editor.userslug}" component="post/editor" class="hidden">[[global:last_edited_by, {posts.editor.username}]] <span class="timeago" title="{posts.editedISO}"></span></small>

        <span class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
            <a class="permalink" href="{config.relative_path}/post/{posts.pid}"><span class="timeago" title="{posts.timestampISO}"></span></a>
        </span>
    </small>
</div>

<br />

<div class="content" component="post/content" itemprop="text" id=content-{posts.pid} {{{ if posts.is_answer }}}style="background-color: rgba(152,251,152,0.5);"{{{ end }}}>
    {posts.content}
</div>

<div class="post-footer">
    {{{ if posts.user.signature }}}
    <div component="post/signature" data-uid="{posts.user.uid}" class="post-signature">{posts.user.signature}</div>
    {{{ end }}}

    <div class="clearfix">
    {{{ if !hideReplies }}}
    <a component="post/reply-count" data-target-component="post/replies/container" href="#" class="threaded-replies no-select pull-left {{{ if !posts.replies.count }}}hidden{{{ end }}}">
        <span component="post/reply-count/avatars" class="avatars {{{ if posts.replies.hasMore }}}hasMore{{{ end }}}">
            {{{each posts.replies.users}}}
            {buildAvatar(posts.replies.users, "xs", true, "")}
            {{{end}}}
        </span>

        <span class="replies-count" component="post/reply-count/text" data-replies="{posts.replies.count}">{posts.replies.text}</span>
        <span class="replies-last hidden-xs">[[topic:last_reply_time]] <span class="timeago" title="{posts.replies.timestampISO}"></span></span>

        <i class="fa fa-fw fa-chevron-right" component="post/replies/open"></i>
        <i class="fa fa-fw fa-chevron-down hidden" component="post/replies/close"></i>
        <i class="fa fa-fw fa-spin fa-spinner hidden" component="post/replies/loading"></i>
    </a>
    {{{ end }}}

    <small class="pull-right">
        <!-- IMPORT partials/topic/reactions.tpl -->
        <span class="post-tools">
            <a component="post/reply" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
            <a component="post/quote" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
        </span>

        <!-- IF !reputation:disabled -->
        <span class="votes">
            <a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
                <i class="fa fa-chevron-up"></i>
            </a>

            <span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>

            <!-- IF !downvote:disabled -->
            <a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
                <i class="fa fa-chevron-down"></i>
            </a>
            <!-- ENDIF !downvote:disabled -->
        </span>
        <!-- ENDIF !reputation:disabled -->

        </span>  

        <script>
            function toggleAnswer(pid) {
                fetch("/api/v3/posts/"+pid+"/mark-as-answer");
                var id = "toggle-answer-"+pid;
                var postElems = document.getElementsByClassName('post-tag');
                var elem;
                for(let i = 0; i < postElems.length; i++) {
                    if(postElems[i].getAttribute('data-pid') === pid.toString()) {
                        elem = postElems[i];
                        break;
                    }
                }
                if(document.getElementById(id).innerHTML.includes('Unmark')) {
                    document.getElementById("content-"+pid).style.backgroundColor = "#fff";
                    document.getElementById(id).innerHTML = 'Mark as Answer';
                    elem.setAttribute('data-is-answer', 'false');
                }
                else {
                    document.getElementById("content-"+pid).style.backgroundColor = "rgba(152,251,152,0.5)";
                    document.getElementById(id).innerHTML = 'Unmark as Answer';
                    elem.setAttribute('data-is-answer', 'true');
                }
            }
        </script>  
        <button onclick="toggleAnswer({posts.pid})" id="toggle-answer-{posts.pid}" class="btn btn-primary">
            {{{ if posts.is_answer }}} Unmark as Answer {{{ end }}}
            {{{ if !posts.is_answer }}} Mark as Answer {{{ end }}}
        </button>

        <!-- IMPORT partials/topic/post-menu.tpl -->
    </small>
    </div>
    <div component="post/replies/container"></div>
</div>