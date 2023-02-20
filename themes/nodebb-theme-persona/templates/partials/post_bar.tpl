<div class="topic-main-buttons pull-right inline-block">
    <span class="loading-indicator btn pull-left hidden" done="0">
        <span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
    </span>

    <!-- IF loggedIn -->
    <button component="topic/mark-unread" class="btn btn-sm btn-default" title="[[topic:mark_unread]]">
        <i class="fa fa-fw fa-inbox"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"></span>
    </button>
    <!-- ENDIF loggedIn -->

    <!-- IMPORT partials/topic/watch.tpl -->

    <!-- IMPORT partials/topic/sort.tpl -->

    <div class="inline-block">
    <!-- IMPORT partials/thread_tools.tpl -->
    </div>
    <!-- IMPORT partials/topic/reply-button.tpl -->
    
    <script>
        function toggleShowAnswer(tid) {
            var elems = document.getElementsByClassName('post-tag');
            let i = 0;
            while(i < elems.length) {
                if(elems[i].getAttribute('data-is-answer') === 'true') {
                    i++;
                }
                else {
                    elems[i].remove();
                }
            }
        }
        function toggleResolved(tid) {
            fetch("/api/v3/topic/"+tid+"/toggle-resolved");
            var id = "toggle-resolved-"+tid;
            if(document.getElementById(id).innerHTML.includes('Unmark')) {
                document.getElementById("check-"+tid).style.display = "none";
                document.getElementById(id).innerHTML = 'Mark as Resolved';
            }
            else {
                document.getElementById("check-"+tid).style.display = "inline";
                document.getElementById(id).innerHTML = 'Unmark as Unresolved';
            }
        }
    </script>

    <button onclick="toggleShowAnswer({tid})" id="toggle-show-answer-{tid}" class="btn btn-primary btn-sm">
        <b>Show Answers Only</b>
    </button>

    <button onclick="toggleResolved({tid})" id="toggle-resolved-{tid}" class="btn btn-primary btn-sm">
        <b>Mark as resolved</b>
    </button>

</div>
