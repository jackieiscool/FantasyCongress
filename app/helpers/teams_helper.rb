module TeamsHelper

  def find_points(rep)
    Bill.find_all_by_bioguide_id(rep.bioguide_id).count
  end
end
