# Godot Pong Project

## Project Info
- **Engine**: Godot 4.6
- **Main Scene**: `pong.tscn` (set in `project.godot` as `run/main_scene`)
- **Renderer**: Mobile

## Structure
- `paddle.tscn`: Base paddle scene (instanced by both players)
- `paddle1.gd`, `paddle2.gd`: Player scripts extending the base paddle
- `ball.tscn`: Ball scene (RigidBody2D)

## Running
- Requires Godot 4.6 editor or runtime
- Open project in Godot editor and press Play, or run: `godot4 --path .`

## Notes
- Project uses Godot UIDs for resource references (not file paths)
- Uses Jolt Physics engine (configured in `project.godot`)