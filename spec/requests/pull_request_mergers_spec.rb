require 'spec_helper'

describe 'PullRequest Mergers Requests' do
  let(:params) do
    {
      'action' => 'closed',
      'number' => '1',
      'pull_request' => {
        'url' => 'https =>//api.github.com/repos/octocat/Hello-World/pulls/1',
        'html_url' => 'https =>//github.com/octocat/Hello-World/pull/1',
        'diff_url' => 'https =>//github.com/octocat/Hello-World/pulls/1.diff',
        'patch_url' => 'https =>//github.com/octocat/Hello-World/pulls/1.patch',
        'issue_url' => 'https =>//api.github.com/repos/octocat/Hello-World/issues/1',
        'commits_url' => 'https =>//api.github.com/repos/octocat/Hello-World/pulls/1/commits',
        'review_comments_url' => 'https =>//api.github.com/repos/octocat/Hello-World/pulls/1/comments',
        'review_comment_url' => 'https =>//api.github.com/repos/octocat/Hello-World/pulls/comments/{number}',
        'comments_url' => 'https =>//api.github.com/repos/octocat/Hello-World/issues/1/comments',
        'statuses_url' => 'https =>//api.github.com/repos/octocat/Hello-World/statuses/6dcb09b5b57875f334f61aebed695e2e4193db5e',
        'number' => 1,
        'state' => 'open',
        'title' => 'new-feature',
        'body' => 'Please pull these awesome changes',
        'created_at' => '2011-01-26T19 =>01 =>12Z',
        'updated_at' => '2011-01-26T19 =>01 =>12Z',
        'closed_at' => '2011-01-26T19 =>01 =>12Z',
        'merged_at' => '2011-01-26T19 =>01 =>12Z',
        'head' => {
          'label' => 'new-topic',
          'ref' => 'new-topic',
          'sha' => '6dcb09b5b57875f334f61aebed695e2e4193db5e',
          'user' => {
            'login' => 'octocat',
            'id' => 1,
            'avatar_url' => 'https =>//github.com/images/error/octocat_happy.gif',
            'gravatar_id' => 'somehexcode',
            'url' => 'https =>//api.github.com/users/octocat',
            'html_url' => 'https =>//github.com/octocat',
            'followers_url' => 'https =>//api.github.com/users/octocat/followers',
            'following_url' => 'https =>//api.github.com/users/octocat/following{/other_user}',
            'gists_url' => 'https =>//api.github.com/users/octocat/gists{/gist_id}',
            'starred_url' => 'https =>//api.github.com/users/octocat/starred{/owner}{/repo}',
            'subscriptions_url' => 'https =>//api.github.com/users/octocat/subscriptions',
            'organizations_url' => 'https =>//api.github.com/users/octocat/orgs',
            'repos_url' => 'https =>//api.github.com/users/octocat/repos',
            'events_url' => 'https =>//api.github.com/users/octocat/events{/privacy}',
            'received_events_url' => 'https =>//api.github.com/users/octocat/received_events',
            'type' => 'User',
            'site_admin' => false
          },
          'repo' => {
            'id' => 1_296_269,
            'owner' => {
              'login' => 'octocat',
              'id' => 1,
              'avatar_url' => 'https =>//github.com/images/error/octocat_happy.gif',
              'gravatar_id' => 'somehexcode',
              'url' => 'https =>//api.github.com/users/octocat',
              'html_url' => 'https =>//github.com/octocat',
              'followers_url' => 'https =>//api.github.com/users/octocat/followers',
              'following_url' => 'https =>//api.github.com/users/octocat/following{/other_user}',
              'gists_url' => 'https =>//api.github.com/users/octocat/gists{/gist_id}',
              'starred_url' => 'https =>//api.github.com/users/octocat/starred{/owner}{/repo}',
              'subscriptions_url' => 'https =>//api.github.com/users/octocat/subscriptions',
              'organizations_url' => 'https =>//api.github.com/users/octocat/orgs',
              'repos_url' => 'https =>//api.github.com/users/octocat/repos',
              'events_url' => 'https =>//api.github.com/users/octocat/events{/privacy}',
              'received_events_url' => 'https =>//api.github.com/users/octocat/received_events',
              'type' => 'User',
              'site_admin' => false
            },
            'name' => 'Hello-World',
            'full_name' => 'octocat/Hello-World',
            'description' => 'This your first repo!',
            'private' => false,
            'fork' => false,
            'url' => 'https =>//api.github.com/repos/octocat/Hello-World',
            'html_url' => 'https =>//github.com/octocat/Hello-World',
            'clone_url' => 'https =>//github.com/octocat/Hello-World.git',
            'git_url' => 'git =>//github.com/octocat/Hello-World.git',
            'ssh_url' => 'git@github.com =>octocat/Hello-World.git',
            'svn_url' => 'https =>//svn.github.com/octocat/Hello-World',
            'mirror_url' => 'git =>//git.example.com/octocat/Hello-World',
            'homepage' => 'https =>//github.com',
            'language' => 'null',
            'forks_count' => 9,
            'stargazers_count' => 80,
            'watchers_count' => 80,
            'size' => 108,
            'default_branch' => 'master',
            'master_branch' => 'master',
            'open_issues_count' => 0,
            'pushed_at' => '2011-01-26T19 =>06 =>43Z',
            'created_at' => '2011-01-26T19 =>01 =>12Z',
            'updated_at' => '2011-01-26T19 =>14 =>43Z'
          }
        },
        'base' => {
          'label' => 'master',
          'ref' => 'master',
          'sha' => '6dcb09b5b57875f334f61aebed695e2e4193db5e',
          'user' => {
            'login' => 'octocat',
            'id' => 1,
            'avatar_url' => 'https =>//github.com/images/error/octocat_happy.gif',
            'gravatar_id' => 'somehexcode',
            'url' => 'https =>//api.github.com/users/octocat',
            'html_url' => 'https =>//github.com/octocat',
            'followers_url' => 'https =>//api.github.com/users/octocat/followers',
            'following_url' => 'https =>//api.github.com/users/octocat/following{/other_user}',
            'gists_url' => 'https =>//api.github.com/users/octocat/gists{/gist_id}',
            'starred_url' => 'https =>//api.github.com/users/octocat/starred{/owner}{/repo}',
            'subscriptions_url' => 'https =>//api.github.com/users/octocat/subscriptions',
            'organizations_url' => 'https =>//api.github.com/users/octocat/orgs',
            'repos_url' => 'https =>//api.github.com/users/octocat/repos',
            'events_url' => 'https =>//api.github.com/users/octocat/events{/privacy}',
            'received_events_url' => 'https =>//api.github.com/users/octocat/received_events',
            'type' => 'User',
            'site_admin' => false
          },
          'repo' => {
            'id' => 1_296_269,
            'owner' => {
              'login' => 'octocat',
              'id' => 1,
              'avatar_url' => 'https =>//github.com/images/error/octocat_happy.gif',
              'gravatar_id' => 'somehexcode',
              'url' => 'https =>//api.github.com/users/octocat',
              'html_url' => 'https =>//github.com/octocat',
              'followers_url' => 'https =>//api.github.com/users/octocat/followers',
              'following_url' => 'https =>//api.github.com/users/octocat/following{/other_user}',
              'gists_url' => 'https =>//api.github.com/users/octocat/gists{/gist_id}',
              'starred_url' => 'https =>//api.github.com/users/octocat/starred{/owner}{/repo}',
              'subscriptions_url' => 'https =>//api.github.com/users/octocat/subscriptions',
              'organizations_url' => 'https =>//api.github.com/users/octocat/orgs',
              'repos_url' => 'https =>//api.github.com/users/octocat/repos',
              'events_url' => 'https =>//api.github.com/users/octocat/events{/privacy}',
              'received_events_url' => 'https =>//api.github.com/users/octocat/received_events',
              'type' => 'User',
              'site_admin' => false
            },
            'name' => 'Hello-World',
            'full_name' => 'octocat/Hello-World',
            'description' => 'This your first repo!',
            'private' => false,
            'fork' => false,
            'url' => 'https =>//api.github.com/repos/octocat/Hello-World',
            'html_url' => 'https =>//github.com/octocat/Hello-World',
            'clone_url' => 'https =>//github.com/octocat/Hello-World.git',
            'git_url' => 'git =>//github.com/octocat/Hello-World.git',
            'ssh_url' => 'git@github.com =>octocat/Hello-World.git',
            'svn_url' => 'https =>//svn.github.com/octocat/Hello-World',
            'mirror_url' => 'git =>//git.example.com/octocat/Hello-World',
            'homepage' => 'https =>//github.com',
            'language' => 'null',
            'forks_count' => 9,
            'stargazers_count' => 80,
            'watchers_count' => 80,
            'size' => 108,
            'default_branch' => 'master',
            'master_branch' => 'master',
            'open_issues_count' => 0,
            'pushed_at' => '2011-01-26T19 =>06 =>43Z',
            'created_at' => '2011-01-26T19 =>01 =>12Z',
            'updated_at' => '2011-01-26T19 =>14 =>43Z'
          }
        },
        '_links' => {
          'self' => {
            'href' => 'https =>//api.github.com/repos/octocat/Hello-World/pulls/1'
          },
          'html' => {
            'href' => 'https =>//github.com/octocat/Hello-World/pull/1'
          },
          'issue' => {
            'href' => 'https =>//api.github.com/repos/octocat/Hello-World/issues/1'
          },
          'comments' => {
            'href' => 'https =>//api.github.com/repos/octocat/Hello-World/issues/1/comments'
          },
          'review_comments' => {
            'href' => 'https =>//api.github.com/repos/octocat/Hello-World/pulls/1/comments'
          },
          'review_comment' => {
            'href' => 'https =>//api.github.com/repos/octocat/Hello-World/pulls/comments/{number}'
          },
          'commits' => {
            'href' => 'https =>//api.github.com/repos/octocat/Hello-World/pulls/1/commits'
          },
          'statuses' => {
            'href' => 'https =>//api.github.com/repos/octocat/Hello-World/statuses/6dcb09b5b57875f334f61aebed695e2e4193db5e'
          }
        },
        'user' => {
          'login' => 'lol',
          'id' => 1,
          'avatar_url' => 'https =>//github.com/images/error/octocat_happy.gif',
          'gravatar_id' => 'somehexcode',
          'url' => 'https =>//api.github.com/users/octocat',
          'html_url' => 'https =>//github.com/octocat',
          'followers_url' => 'https =>//api.github.com/users/octocat/followers',
          'following_url' => 'https =>//api.github.com/users/octocat/following{/other_user}',
          'gists_url' => 'https =>//api.github.com/users/octocat/gists{/gist_id}',
          'starred_url' => 'https =>//api.github.com/users/octocat/starred{/owner}{/repo}',
          'subscriptions_url' => 'https =>//api.github.com/users/octocat/subscriptions',
          'organizations_url' => 'https =>//api.github.com/users/octocat/orgs',
          'repos_url' => 'https =>//api.github.com/users/octocat/repos',
          'events_url' => 'https =>//api.github.com/users/octocat/events{/privacy}',
          'received_events_url' => 'https =>//api.github.com/users/octocat/received_events',
          'type' => 'User',
          'site_admin' => false
        },
        'merge_commit_sha' => 'e5bd3914e2e596debea16f433f57875b5b90bcd6',
        'merged' => true,
        'mergeable' => true,
        'merged_by' => {
          'login' => 'octocat',
          'id' => 1,
          'avatar_url' => 'https =>//github.com/images/error/octocat_happy.gif',
          'gravatar_id' => 'somehexcode',
          'url' => 'https =>//api.github.com/users/octocat',
          'html_url' => 'https =>//github.com/octocat',
          'followers_url' => 'https =>//api.github.com/users/octocat/followers',
          'following_url' => 'https =>//api.github.com/users/octocat/following{/other_user}',
          'gists_url' => 'https =>//api.github.com/users/octocat/gists{/gist_id}',
          'starred_url' => 'https =>//api.github.com/users/octocat/starred{/owner}{/repo}',
          'subscriptions_url' => 'https =>//api.github.com/users/octocat/subscriptions',
          'organizations_url' => 'https =>//api.github.com/users/octocat/orgs',
          'repos_url' => 'https =>//api.github.com/users/octocat/repos',
          'events_url' => 'https =>//api.github.com/users/octocat/events{/privacy}',
          'received_events_url' => 'https =>//api.github.com/users/octocat/received_events',
          'type' => 'User',
          'site_admin' => false
        },
        'comments' => 10,
        'commits' => 3,
        'additions' => 100,
        'deletions' => 3,
        'changed_files' => 5
      }
    }
  end

  describe 'POST /pull_request_mergers' do
    it 'creates a PullRequestMerger' do
      post api_pull_request_mergers_path, params.to_json

      pull_request_merger = PullRequestMerger.first
      pull_request_merger.should be_present
      pull_request_merger.pull_request['merged'].should eq('true')
      pull_request_merger.user.should eq(current_user)
    end
  end
end