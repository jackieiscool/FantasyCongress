module TeamsHelper

  def find_points(rep)
    # @representatives.each do |rep|
      points = Bill.find_all_by_bioguide_id(rep.bioguide_id).count
    # end
  end
end
