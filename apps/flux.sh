curl -s 'http://macapps.link/en/flux' | sh

defaults write -app Flux transitionSpeed 1
defaults write -app Flux wakeNotifyDisable 1
defaults write -app Flux "disable-com.google.Chrome" 0
defaults write -app Flux dayColorTemp 4200
defaults write -app Flux nightColorTemp 3400
defaults write -app Flux lateColorTemp 2700
