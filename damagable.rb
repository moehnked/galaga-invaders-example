module Damagable

  def damage(DAMAGE)
    @hit_points -= DAMAGE
  end
end