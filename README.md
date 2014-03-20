# NOTDVS
[![](https://api.tddium.com:443/alphasights/notdvs/badges/65079.png?badge_token=84482063fe8b05882d51d4d99a917760aca6bd96)](https://api.tddium.com:443/alphasights/notdvs/suites/65079)

## What sorcery is this?

NOtices To DeveloperS is a dashboard for developers written with Ember and Rails.
It notifies developers of problems, it keeps track of tasks and rewards developers when they get shit done®.

## Dependencies

- Postgresql
- Flowdock
- Pusher
- Github

## Features

All the features presented here have a summary page which updates live.
Every action can be either performed via the interface or using the RESTful API.

### Notices

![notices](http://f.cl.ly/items/3g1p1Q3822293K0P3g0S/Image%202014-03-07%20at%2012.20.16%20pm.png)

Whenever something goes wrong in your system, you can POST to the /notices path and create a new notice, like this:

```
# POST /notices

+ Request application/json

        {
          "notice": {
            "title": "test",
            "client_id": "1234",
            "app": "testapp",
            "type": "error"
          }
        }

+ Response 201 application/json; charset=utf-8

        {
          "notice": {
            "client_id": "1234",
            "id": "2009bb77-edc8-4b81-9bd9-3ed90e7b7e46",
            "title": "test",
            "created_at": "2014-03-07T10:56:07.125Z",
            "type": "error",
            "app": "testapp"
          }
        }
```

Mandatory fields: `app`, `title`.
If you don't specify any type `notice` will be used.

In order to specify the `app` via the interface you can write "app:my-app this is the notice".

### Tasks

![tasks](http://f.cl.ly/items/0c2E3k3G0M3P303J3W26/Image%202014-03-07%20at%2012.21.39%20pm.png)

You can create your tasks with the API like this:

```
# POST /tasks

+ Request application/json

        {
          "task": {
            "title": "test",
            "client_id": "1234"
          }
        }

+ Response 201 application/json; charset=utf-8

        {
          "users": [
            {
              "id": "7be0dd9f-402e-445b-aa61-c3d6ca9c6fcb",
              "avatar_url": "omg",
              "nickname": "current_user",
              "points": 0
            }
          ],
          "task": {
            "client_id": "1234",
            "id": "c7022279-768b-425f-9ea1-ff83921b4784",
            "title": "test",
            "created_at": "2014-03-07T10:56:06.997Z",
            "completed": false,
            "assignee_id": null,
            "user_id": "7be0dd9f-402e-445b-aa61-c3d6ca9c6fcb"
          }
        }
```

If you want to assign someone you can update the task like this:

```
# PATCH /tasks/{id}

+ Request application/json

        {
          "task": {
            "title": "omg",
            "assignee_id": "b4135486-69ba-4fee-9530-0eaeebe52209"
          }
        }

+ Response 200 application/json; charset=utf-8

        {
          "users": [
            {
              "id": "db2d88d3-f87f-45f8-9d04-055dd6fe49e2",
              "avatar_url": "http://lol.com/omg14.png",
              "nickname": "test14",
              "points": 0
            }
          ],
          "task": {
            "client_id": null,
            "id": "cb7d8a67-88e9-4365-8411-b637fe306469",
            "title": "omg",
            "created_at": "2014-03-07T10:56:07.018Z",
            "completed": false,
            "assignee_id": "b4135486-69ba-4fee-9530-0eaeebe52209",
            "user_id": "db2d88d3-f87f-45f8-9d04-055dd6fe49e2"
          }
```

### Leaderboard

![leaderboard](http://cl.ly/image/280O052c2E3C/download/Image%202014-03-20%20at%201.44.44%20pm.png)

#### Rules

Completing tasks:

- 1 point

Merging PRs:

- 50 points if the number of additions is greater than 500
- 30 points if the number of deletions is double the number of additions and is greater than 100
- 15 points if the number of additions is greater than 100
- 5 points if the number of additions is less than 10
- 10 points in all the other cases

Reviewing PRs:

- 15 points for commeting with `:+1:`

#### Caveats

In order to get points for merging PRs you need to setup a webhook in your repos that points to:

```
https://your.notdvs.installation.com/api/pull_requests
```

The top person in the ladder will always have their bar full, and the other bars are calculated based on the top one.
