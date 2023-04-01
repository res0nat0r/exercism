# frozen_string_literal: true

class Attendee
  def initialize(height)
    @height = height
  end

  attr_reader :height
  attr_reader :pass_id

  def issue_pass!(pass_id)
    @pass_id = pass_id
    @pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end
