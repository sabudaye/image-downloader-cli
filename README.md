## ImageDownloader cli
Simple command-line tool for [image_downloader](https://github.com/Mugimaru/image-downloader)
### Installation
    git clone https://github.com/Mugimaru/image-downloader-cli.git
    cd image_downloader_cli/
    bundle install
### Usage
    ruby grab.rb <url> [folder]
For example

    ruby grab.rb http://google.com google_images
    
You can find downloaded files in downloads/your_folder/ or in downloads/default/ if second parameter wasn't specified
