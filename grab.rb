# coding: utf-8
require "bundler/setup"
require "image_downloader"

raise 'URL is not defined' if ARGV.size == 0

files = []
finder = ImageDownloader::Finder.new(ARGV[0])
downloader = ImageDownloader::Downloader.new(finder, {
  dir: ARGV[1],
  callback: {
    before_downloads: ->{ puts "Начинается загрузка изображений..." },
    before_each_download: ->(file, url){ files << file },
    after_downloads: ->{ puts "Загружено файлов: #{files.size}" }
  }
})

downloader.download