## New features

### Feature 1: Mark Post as Answered

The first feature is to mark post as answered. Inside a topic, we add a button "Mark as Answer" for each post. Once the button is clicked, the post is updated to be an answer to the topic. Visually, the whole post field will become light green and the button will turn into "Unmark as answer". If this button is clicked on again, the post will stop to be an answer. Visually, the post will return to the normal style and the button will turn back into "Mark as Answer".

The status of a post being an answer or not is updated in the database, so it will persist upon refreshing the page or restarting the server.

To user test this functionality, try to click on the "Mark/Unmark as Answer" button for several different posts and refresh the page or restart the server to check if the changes persist.

### Feature 2: Filter Answered Posts

We add a button at the top of each topic called "Show Answers Only". When a user clicks this button, only posts that were marked as answers will appear. If the user wants to show all posts again, just refresh the page and all posts will come back.

If a user changes a post from answer to not an answer when showing answers only, the post will not disappear immediately in order to give the user feedback of the operation (the post is indeed marked as not an answer). The post will only disapper if the user clicks "Show Answer Only" again.

To user test this functionality, mark a few posts as answers and click "Show Answers Only". Then, try to unmark a few posts as answers and click on the button again. Refresh the page anytime to see all posts.

### Feature 3: Mark Topic as Resolved

We add a button at the top of each topic to mark a topic as resolved. There are visual clues for the effect of clicking this button, including a green check next to the topic title and the legend on the button.

To user test this functionality, click on the button and see the visual clues.

### Feature 4: Filter Resolved Topics

Inside each category, users can filter resolved topics by clicking the button "Show Resolved Only" at the top right row of the category page. Users can get back all topics by refreshing the page. Besides, we also put a visual clue for resolved topic: a green check next to the title.

To user test this functionality, mark a few topics as resolved and see the visual clues in the category page. Click on the button to filter resolved topics only and refresh the page to see all topics.

## Testing

We add automated tests in the following files:

 * test/controllers.js
 * test/posts.js
 * test/topics.js

The code in posts.js and topics.js tests the two new functions we added to update a post as (not) an answer and update a topic as (not) resolved. When testing the controllers, we decided to use the lean controller testing methodology. This means that we tested that the controllers return the expected response only. The controller tests helps make sure that our new endpoints are working correctly.

We made slight changes in the GET method handlers of the topic and category controllers to help frontend achieve more responsive visual effects. We test these changes by confirming the visual effects in the frontend is the same as expected.