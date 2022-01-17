# Snake

My implementation of the game [Snake](https://en.wikipedia.org/wiki/Snake_(video_game_genre)) in Ruby.

## Dependencies

This project uses the [ruby2d](https://github.com/ruby2d/ruby2d) gem as a game engine. Install it by running `gem install ruby2d`. For Linux, you'll need to install a few packages before installing the gem. See [here](https://www.ruby2d.com/learn/linux/) for instructions.

## TODO

- [x] Moveable snake head
- [x] Moveable snake body
- [x] Apple mechanics
  - [x] Apple random spawn
  - [x] Make snake length change when eaten
  - [x] Make apple not spawn inside snake
- [x] Collision detection and game over on collision
- [ ] Make moving the opposite direction impossible (i.e. if you're moving right and you quickly press up the left you can still go backwards)
- [ ] Win detection
- [ ] Thinner snake

