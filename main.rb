#!/usr/bin/env ruby

require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?
  "Duck types are public interfaces that are not tied to any specific class" ~Sandi Metz
  The analogy provided describes the conceptualization of a hypethetical "duck" class based not on an expicit
  declaration of the object as a duck, but rather an inference of its "duckness" based on the qualities
  it posesses which fit the duck criteria: "quacks", and "waddles". anything that does those things is a "duck"
  and should therefore respond to messages which a "duck" expects.

2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?
  1. case statements that switch on class
  2. kind_of? and is_a?
  3. responds_to?
  code which utilizes these behaviors in order to discern class information purpetuate a dependancy on a class

3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.

   false. the arguments in favor of duck typing are based on the assumption the programmers with be able to infer an object's
   type from its context.
=end
