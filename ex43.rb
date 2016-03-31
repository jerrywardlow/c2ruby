class Scene
  def enter()
    puts "Scene is not yet configured. Subclass and implement `enter()`"
    exit(1)
  end
end

class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    current_scene.enter()
  end
end

class Death < Scene
  @@quips = [
    "You died. You're not so great at this.",
    "Your mom is ashamed by your performance.",
    "Fail.",
    "Zed A. Shaw is very disappointed in you."
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

class CentralCorridor < Scene
  def enter()
    puts "WALL OF TEXT THAT WE'RE GOING TO SKIP..."
    print "> "

    action = $stdin.gets.chomp

    if action == "shoot"
      puts "You shoot... poorly..."
      return 'death'

    elsif action == "dodge"
      puts "You also dodge poorly."
      return 'death'

    elsif action == "joke"
      puts "This is getting old."
      return 'laser_weapon_armory'

    else
      puts "TRY AGAIN"
      return 'central_corridor'
    end
  end
end

class LaserWeaponArmory < Scene
  def enter()
    puts "Enter secret 3 digit code:"
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    print "[keypad]> "
    guess = $stdiin.gets.chomp
    guesses = 0

    while guess != code && guesses < 10
      puts "BZZT!"
      guesses += 1
      print "[keypad]> "
      guess = $stdin.gets.chomp
    end

    if guess == code
      puts "Great job"
      return 'the_bridge'
    else
      puts "You goofed."
      return 'death'
    end
  end
end

class TheBridge < Scene
  def enter()
    puts "Some stuff about a bridge?"
    print "> "

    action = $stdin.gets.chomp

    if action == "throw"
      puts "Bad throw, bro."
      return 'death'

    elsif action == "place"
      puts "Good place, bro"
      return 'escape_pod'
    else
      puts "TRY AGAIN"
      return 'the_bridge'
    end
  end
end

class EscapePod < Scene
  def enter()
    puts "Something about finding 5 escape pods..."

    good_pod = rand(1..5)
    print "[pod #]> "
    guess = $stdin.gets.chomp.to_i

    if guess != good_pod
      puts "You hop into pod %s and immediately die." % guess
      return 'death'
    else
      puts "Pod #%s was the right choice!" % guess

      return 'finished'
    end
  end
end

class Finished < Scene
  def enter()
    puts "You won! Adequate job."
  end
end

class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'finished' => Finished.new(),
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
