# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Godot 4.6 Pong game using GDScript. Renderer: Mobile. Physics: Jolt Physics.

## Running

Open in Godot 4.6 editor and press Play, or: `godot4 --path .`

## Commit Conventions

Commits are enforced via husky + commitlint with `@commitlint/config-conventional`. Use conventional commits (e.g., `feat:`, `fix:`, `chore:`). Run `npm install` to set up hooks.

## Architecture

- **Main scene**: `pong.tscn` — root Node2D with Camera2D, two paddle instances, and a ball instance
- **Paddle**: `paddle.tscn` (CharacterBody2D) is the base scene, instanced twice in `pong.tscn`. Each instance gets a separate script:
  - `paddle1.gd` — positions paddle on the left edge of the viewport
  - `paddle2.gd` — positions paddle on the right edge of the viewport
- **Ball**: `ball.tscn` (RigidBody2D) with `ball.gd` script, instanced in the main scene

Resource references use Godot UIDs (not file paths) in `.tscn` files.

## Godot Conventions

- GDScript uses tabs for indentation
- Scene files (`.tscn`) are text-based Godot scene format v3
- The `.godot/` directory is generated — never edit manually
- `.gd.uid` files are auto-generated UID mappings — do not edit
