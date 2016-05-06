Nuage Gracieux
==============

[![Build Status](https://travis-ci.org/nono/nuage-gracieux.svg?branch=master)](https://travis-ci.org/nono/nuage-gracieux)

What is Cozy and ng?
--------------------

![Cozy Logo](https://raw.github.com/cozy/cozy-setup/gh-pages/assets/images/happycloud.png)

[Cozy](https://cozy.io) is a platform that brings all your web services in the
same private space.  With it, your web apps and your devices can share data
easily, providing you with a new experience. You can install Cozy on your own
hardware where no one profiles you.

_Nuage Gracieux_ (or ng) is my experiments about cozy to make it a better platform:

- more secure
- more scalable
- faster to load
- better for development

It is build with less known languages like [Elixir](http://elixir-lang.org/)
and [Elm](http://elm-lang.org/).


Paas
----

Paas is a kind of cozy-controller + cozy-monitor. It manages the platform, ie
the stack and the applications. To start it:

* Install hex with `mix local.hex`
* Install dependencies with `mix deps.get`
* Start Phoenix endpoint with `mix phoenix.server`


Copyheart
---------

The code is licensed as GNU AGPLv3. See the LICENSE file for the full license.

♡2016 by Bruno Michel. Copying is an act of love. Please copy and share.
