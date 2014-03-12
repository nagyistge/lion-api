task recalculate_points: :environment do
  User.update_all(points: 0)
  PullRequest.destroy_all

  Octokit.auto_paginate = true

  client = User.first.github_client

  PullRequest.destroy_all

  ['alphasights/pistachio', 'alphasights/notdvs', 'alphasights/bee', 'alphasights/brazil', 'alphasights/octopus'].each do |repo|
    client.pull_requests(repo, state: 'closed').each do |pr|
      user = User.where(nickname: pr.user.login).first

      next unless user

      PullRequest.create!(user: user, merged: 'true', number: pr.number, base_repo_full_name: pr.base.repo.full_name)
    end
  end

  TaskCompletion.all.map { |tc| tc.run_callbacks(:create) }
end
