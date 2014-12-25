MacScripts
==========

A number of Mac and bash specific scripts.

To use 'bin':

- Create a ~/bin folder
- Place items from the bin folder into ~/bin
- Make the .command files executable: chmod +x *.command
- Add ~/bin to PATH (Optional)

To use 'Services':

- Copy Services folder into ~/Library/Services
- The Services expect the underlying scripts to be in ~/bin, if they are not there, open the scripts in Automator an change the paths.
- Right-click or Ctrl-click on an image in the Finder and choose one of the Services from the Services menu.

Services

- DeRetina Image(s) - On a Retina Mac shrink images like screenshots down to a suitables size for non-Retina machines.
- Remove Image Geotags - Remove GPS metadata info from images
- Scale to 540px - Scale an image to a width of 540px, maintaining the aspect ratio for the image.
