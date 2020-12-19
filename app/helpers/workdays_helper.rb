module WorkdaysHelper

  def worker_select_method(w)
    Worker.where(place_id: (w))
  end
end
