# TODO: Write documentation for `Sluggr`
module Sluggr
  VERSION = "0.1.0"

  class Sluggr
    def self.slugify(str, *options)
      delimiter = "-"
      if !options.empty?
        options = options[0]?
        if !options.is_a?(Nil)
          delimiter = options.fetch("delimiter")
        end
      end
      str
        .downcase
        .gsub(/[^a-zA-Z ]/, "")
        .gsub(" ", delimiter)
        .gsub(delimiter * 2, delimiter)
        .rchop(delimiter)
    end
  end
end
