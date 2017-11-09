
class AsciiBanners

  def self.welcome_banner
    puts   File.read("../ascii/mastermind.txt").yellow
  end

  def self.goodbye_banner
    puts  File.read("../ascii/goodbye.txt").yellow
  end

end
