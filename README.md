# actuallyread
Brilliantly simple reading calendars so you will actually read books.


## TODO

* Create a single Google Calendar event (Google Calendar API Integration)
* Divide a book into a number of Reading Tasks (Tasks)
* Create an input system for a book (Books)
* Allow users to sign up with Google (Signup)
* Create a new Google Calendar when users sign up
* Allow users to manage their books
* Allow users to schedule all-day events for their reading events
* Allow users to set a specific time each day of the week for their events
* Allow users to update all events related to a particular book when the book is edited
* When a user marks a Task as completed, delete the event from the calendar
* Create a setting to Float Incomplete Tasks

### Book

* Book hasMany Task
* title
* pages
* chapters
* start_at
* finish_at
* email_notifications
* created_at
* updated_at
* deleted_at

### Task

* Task belongsTo Book
* title ("#{Book.title} - p.#{start_page}-#{end_page}")
* all_day (bool)
* start_at (nil or Datetime)
* end_at
* alert_at
* completed_at
* created_at
* updated_at
* deleted_at

### User

* User hasMany Book
* first_name
* last_name
* email
* google_token?
* last_logged_in_at
* created_at
* updated_at
* deleted_at

### Float Incomplete Tasks

* When enabled on a Book, if a Task is not completed by the end of the scheduled day, float the reading schedule for that Book forward by one day


