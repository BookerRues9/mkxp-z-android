#!/bin/bash

# This script downloads/git clones project dependencies
# such as libogg, SDL2, Ruby, etc.

GIT_ARGS="-q -c advice.detachedHead=false --single-branch --depth 1"

# Xiph libogg
if [[ ! -d "libogg" ]]; then
  echo "Downloading libogg..."
  git clone $GIT_ARGS -b v1.3.5 https://github.com/xiph/ogg.git libogg
fi

# Xiph libvorbis
if [[ ! -d "libvorbis" ]]; then
  echo "Downloading libvorbis..."
  git clone $GIT_ARGS -b v1.3.7 https://github.com/xiph/vorbis.git libvorbis
fi

# Xiph libtheora
if [[ ! -d "libtheora" ]]; then
  echo "Downloading libtheora..."
  git clone $GIT_ARGS -b v1.2.0 https://github.com/xiph/theora.git libtheora
fi

# GNU libiconv
if [[ ! -d "libiconv" ]]; then
  echo "Downloading libiconv..."
  wget -q https://ftp.gnu.org/gnu/libiconv/libiconv-1.17.tar.gz
  tar -xzf libiconv-1.17.tar.gz
  mv libiconv-1.17 libiconv
  rm -f libiconv-1.17.tar.gz
fi

# Freedesktop uchardet
if [[ ! -d "uchardet" ]]; then
  echo "Downloading uchardet..."
  git clone $GIT_ARGS -b v0.0.8 https://gitlab.freedesktop.org/uchardet/uchardet.git uchardet
fi

# Freedesktop Pixman
if [[ ! -d "pixman" ]]; then
  echo "Downloading Pixman..."
  git clone $GIT_ARGS -b pixman-0.42.2 https://gitlab.freedesktop.org/pixman/pixman.git pixman
fi

# PhysicsFS
if [[ ! -d "physfs" ]]; then
  echo "Downloading PhysicsFS..."
  git clone $GIT_ARGS -b release-3.2.0 https://github.com/icculus/physfs.git physfs
fi

# OpenAL Soft 1.23.1
if [[ ! -d "openal" ]]; then
  echo "Downloading OpenAL Soft..."
  git clone $GIT_ARGS -b 1.23.1 https://github.com/kcat/openal-soft.git openal
fi

# SDL2
if [[ ! -d "SDL2" ]]; then
  echo "Downloading SDL2..."
  git clone $GIT_ARGS -b release-2.28.3 https://github.com/libsdl-org/SDL.git SDL2
fi

# SDL2_image
if [[ ! -d "SDL2_image" ]]; then
  echo "Downloading SDL2_image..."
  git clone $GIT_ARGS --recurse-submodules -b release-2.6.3 https://github.com/libsdl-org/SDL_image.git SDL2_image
fi

# SDL2_ttf
if [[ ! -d "SDL2_ttf" ]]; then
  echo "Downloading SDL2_ttf..."
  git clone $GIT_ARGS --recurse-submodules -b release-2.20.2 https://github.com/libsdl-org/SDL_ttf.git SDL2_ttf
fi

# SDL2_sound
if [[ ! -d "SDL2_sound" ]]; then
  echo "Downloading SDL2_sound..."
  git clone $GIT_ARGS -b v2.0.1 https://github.com/icculus/SDL_sound.git SDL2_sound
fi

# OpenSSL 1.1.1u
if [[ ! -d "openssl" ]]; then
  echo "Downloading OpenSSL..."
  git clone $GIT_ARGS -b OpenSSL_1_1_1u https://github.com/openssl/openssl.git openssl
fi

# Ruby 3.1.0 (patched for mkxp-z)
if [[ ! -d "ruby" ]]; then
  echo "Downloading Ruby..."
  git clone $GIT_ARGS -b mkxp-z-3.1 https://github.com/mkxp-z/ruby.git ruby
fi

echo "Done!"
