#!/bin/bash 

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound " ${sounds[dog]} #Dog's sound
echo "All animals sound " ${sounds[@]} #All values 
echo "Animals" ${!sounds[@]} #All keys
echo "Number of animals" ${#sounds[@]} #Number of elements
unset sounds[dog] sounds[cow] #delete dog and cow
echo "Animals left" ${!sounds[@]} #Animals left after deletion of dog and cow
echo "Number of animals left" ${#sounds[@]} #Number of elements left
