class Game < ApplicationRecord
  belongs_to :matchday
  belongs_to :home_team, class_name: 'Team', foreign_key: 'home_team_id', required: true
  belongs_to :away_team, class_name: 'Team', foreign_key: 'away_team_id', required: true
  has_many :statistics

  def score(team)
    if team == self.home_team
      other_team = self.away_team
    else
      other_team = self.home_team
    end

    points_team = team.action_in_game(Action.first, self)
    points_other_team = other_team.action_in_game(Action.first, self)

    if points_team > points_other_team
      score_team = 3
    elsif points_team == points_other_team
      score_team = 1
    else
      score_team = 0
    end

    return score_team
  end

  def is_started?
    self.start_time ? true : false
  end

  def seconds_passed
    return unless self.start_time

    past = DateTime.parse(self.start_time.to_s)
    present = DateTime.now.new_offset(0)
    return ((present - past)*24*60*60).to_i
  end

  def secs
    secs = (seconds_passed % 60).to_s
    if secs.chars.size == 1
      secs = "0#{secs}"
    end
    return secs
  end

  def mins
    mins = (seconds_passed / 60).to_s
    if mins.chars.size == 1
      mins = "0#{mins}"
    end
    return mins
  end
end
