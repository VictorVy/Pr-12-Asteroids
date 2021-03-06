class Bullet extends GameObject
{ 
  public Bullet(PVector pos, PVector dir, float size, int setSpeed, boolean friendly)
  {
    this.pos = pos;
    speed = dir.setMag(setSpeed);
    this.size = size;
    hp = 1;
    this.friendly = friendly;
  }
  
  void show()
  {
    pushMatrix();
    
    translate(pos.x, pos.y);
    rotate(speed.heading());
    
    stroke(255);
    strokeWeight(size);
    
    line(player.size / 2, 0, player.size / 2 + size * 2, 0);
    
    popMatrix();
  }
  
  void act()
  {
    super.act();
    
    if(pos.x > width + size / 2 || pos.x < 0 - size / 2 || pos.y > height + size / 2 || pos.y < 0 - size / 2)
      hp = 0;
  }
}
