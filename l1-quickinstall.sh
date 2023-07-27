#!/bin/bash

function i () {
    cd "$1" && makepkg -i
}

paru -S sdbus-cpp
( i microsoft-identity-broker )
( i msalsdk-dbusclient )
