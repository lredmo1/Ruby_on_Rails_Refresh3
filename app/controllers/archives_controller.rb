class ArchivesController < ApplicationController
  def index
	@entries = Entry.all.group_by(&:day)
	# created day action on the entry model file
  end
end
