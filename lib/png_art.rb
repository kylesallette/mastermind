

class PngArt


  def self.wizard
    Catpix::print_image "../png_art/wizard.png",
      :limit_x => 0.5,
      :limit_y => 0.0,
      :center_x => false,
      :center_y => false,
      :bg_fill => false,
      :resolution => "high"
  end

  def self.coin
    Catpix::print_image "../png_art/coin.png",
      :limit_x => 0.3,
      :limit_y => 0.0,
      :center_x => false,
      :center_y => false,
      :bg_fill => false,
      :resolution => "high"
  end

  def self.wizard_2
    Catpix::print_image "../png_art/wizard_2.png",
      :limit_x => 0.3,
      :limit_y => 0.0,
      :center_x => false,
      :center_y => false,
      :bg_fill => false,
      :resolution => "high"
  end



end
